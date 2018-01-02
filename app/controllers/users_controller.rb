class UsersController < ApplicationController
  include Pundit
  def index
    @users = User.paginate(page: params[:page])
    authorize @users
  end

  def show
    @user = User.find(params[:id])
    authorize @user
  end

  def new
    @user = User.new
    authorize @user
  end

  def create
    @user = User.new(new_user_params)
    authorize @user
    if @user.save
      flash[:notice] = "New user created!"
      redirect_to users_path
    else
      flash[:error] = "New user could not be created. Please check logs for more information."
      render action: :new
    end
  end

  def edit
    @user = User.find(params[:id])
    authorize @user
  end

  def update
    @user = User.find(params[:id])
    authorize @user
    @user.update_attributes(user_is_global? ? global_params : user_params)

    if @user.save
      redirect_to @user, notice: "Successfully updated user."
    else
      flash[:error] = "User not updated. Please try again."
      render :edit
    end
  end

  def destroy
    @user = User.find(params[:id])
    authorize @user
    if @user.destroy
      redirect_to @user, notice: "User has been destroyed."
    else
      flash[:error] = "User could not be destroyed."
      render :index
    end
  end

  private

  def user_params
    params.require(:user).permit(:email, :name, :role, :distribution_center_ids => [])
  end

  def global_params
    b = {distribution_center_ids: []}
    params.require(:user).permit(:email, :name, :role).merge(b)
  end

  def user_is_global?
    params[:user][:role] == "admin" || params[:user][:role] == "user"
  end

  def new_user_params
    assign_params = user_is_global? ? global_params : user_params
    pw = {password: "hellojesus"}
    assign_params.merge(pw)
  end
end
