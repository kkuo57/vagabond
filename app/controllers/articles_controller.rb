class ArticlesController < ApplicationController

  # before_action :logged_in?, only: [:create]
  # before_action :set_user
  # before_action :set_city


  def index
    if current_user == nil
      redirect_to login_path
    else
      @user = current_user
      @articles = @user.articles
      render :index
    end
  end

  def show
    @article = Article.find(params[:id])
  end

  def new
    @city = City.find(params[:id])
    @article = Article.new
  end

  def create
    if current_user == nil
      redirect_to login_path
    else
      p = article_params
      p[:user_id] = current_user.id
      @article = Article.create(p)
      redirect_to article_path(@article.id)
    end
  end

  def edit
    @article = Article.find(params[:id])
  end

  def update
    @article = Article.find(params[:id])
    @article.update(article_params)
    redirect_to article_path(@article.id)
  end

  def destroy
    @article = Article.destroy(params[:id])
    redirect_to user_path(current_user)
  end

  private
  #
  # def set_user
  #   @user = User.find(params[:user_id])
  # end
  #
  # def set_city
  #   @city = City.find(params[:city_id])
  # end

  def article_params
    params.require(:article).permit(:title, :body, :user_id, :city_id)
  end



end
