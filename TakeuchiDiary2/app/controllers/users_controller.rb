class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
    @articles = @user.articles.page(params[:page]).per(10)
  end
end
