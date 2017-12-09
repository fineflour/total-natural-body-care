class ArticlesController < ApplicationController
  respond_to :html, :json, :js
  def index
    @articles =  article_for_index  
  end


  def show
    @article = Article.find(params[:id])
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_create_params)
    if @article.save
      flash[:notice] = "Article created successfully!"
      redirect_to articles_path
    else
      flash[:error] = "Article could not be saved."
      render action: :new
    end
  end

  def edit
    @article = Article.find(params[:id])
  end

  def update
    @article = Article.find(params[:id])
    @article.update_attributes(article_params)

    if @article.save
      redirect_to @article, notice: "Successfully updated"
    else
      flash[:error] = "Article cannot be updated. Try again"
      render :edit
    end
  end

  def destroy
    @article = Article.find(params[:id]).destroy
    flash[:notice] = "Article successfully deleted"
    redirect_to articles_path

  end

  private 
  def article_for_index
    Article.order("created_at DESC").
      #includes(:products, :orderproducts, :orderproduct_transitions).
      # text_search(params[:query]).
      paginate(page: params[:page])
  end

  def article_params
    params.require(:article)
      .permit(:title, :body, :active, :soruce)
  end
end
