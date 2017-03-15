class ArticlesController < ApplicationController

  # before_action :logged_in?, only: [:create]
  # before_action :set_user
  # before_action :set_city


    def index
        @user = current_user
        @articles = @user.articles
            render :index

      end


  def new
    @city = City.find(params[:id])
    @article = Article.new
  end

  def create
    p = article_params
    to_save = {title: p[:title], body: p[:body], user_id: current_user.id, city_id: p[:city_id]}
    @article = Article.create(to_save)
    redirect_to cities_path
  end

  def edit
    # sends 'edit' form
  end

  def update
    @article = Article.update(article_params)
  end

  def destroy
    @article = Article.destroy
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
