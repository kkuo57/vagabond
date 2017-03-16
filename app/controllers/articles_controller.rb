class ArticlesController < ApplicationController

  # before_action :logged_in?, only: [:create]
  # before_action :set_user
  # before_action :set_city

  def index
    @articles = Article.all
  end

  def show
    @article = Article.find(params[:id])
  end

  def new
    @city = City.find(params[:id])
    @article = Article.new
  end

  def create
    p = article_params
    p[:user_id] = current_user.id
    @article = Article.create(p)
    redirect_to article_path(@article.id)
  end

  def edit
    # sends 'edit' form
  end

  def update
    @article = Article.update(article_params)
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
