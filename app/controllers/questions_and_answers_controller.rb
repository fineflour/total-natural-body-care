class QuestionsAndAnswersController < ApplicationController
  def index
		@list = questions_and_answers_for_index    
  end

  def show
    @qna= QuestionsAndAnswer.find(params[:id])
    authorize @qna
  end

  def new
    @qna= QuestionsAndAnswer.new
    authorize @qna
  end

  def create
    @qna= QuestionsAndAnswer.new(new_user_params)
    authorize @qna
    if @qna.save
      flash[:notice] = "New user created!"
      redirect_to users_path
    else
      flash[:error] = "New user could not be created. Please check logs for more information."
      render action: :new
    end
  end

  def edit
    @qna = QuestionsAndAnswer.find(params[:id])
    authorize @qna
  end

  def update
    @qna = QnestionsAndAnswer.find(params[:id])
    authorize @qna
    @qna.update_attributes(user_is_global? ? global_params : user_params)

    if @qna.save
      redirect_to @qna, notice: "Successfully updated Q and A."
    else
      flash[:error] = "Q and A not updated. Please try again."
      render :edit
    end
  end

  def destroy
    @qna= QuestionsAndAnswer.find(params[:id])
    authorize @qna
    if @qna.destroy
      redirect_to @qna, notice: "Q and A has been destroyed."
    else
      flash[:error] = "Q and A could not be destroyed."
      render :index
    end
  end


  private
	def questions_and_answers_for_index
		QuestionsAndAnswer.order("id").paginate(page: params[:page])
	end


  def qna_params
    params.require(:qna).permit(:qnestion, :answer, :view_count, :view)
  end
end
