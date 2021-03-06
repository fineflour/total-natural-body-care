class ContactsController < ApplicationController

  def index
    @contacts =  contact_for_index  
  end

	def new
		@contact = Contact.new
	end

  def create
    @contact= Contact.new(contact_params)
    if @contact.save
      flash[:notice] = "Your request has been processed successfully!"
      redirect_to articles_path
    else
      flash[:error] = "Error: Your request can not be processed!"
      render action: :new
    end
  end

  def show

  end

	def destroy
	end

  private
  def contact_for_index
    Contact.order("created_at DESC").
      #includes(:products, :orderproducts, :orderproduct_transitions).
      # text_search(params[:query]).
      paginate(page: params[:page])
  end

  def contact_params
    params.require(:contact)
      .permit(:name, :email, :phone, :subject, :message)
  end
end
