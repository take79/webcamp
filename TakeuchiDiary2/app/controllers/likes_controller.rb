class LikesController < ApplicationController
  before_action :authenticate_user!

  def create
    @article = Article.find(params[:article_id])
    @like = current_user.likes.build(article: @article)
    if @like.save
      redirect_to articles_url, notice: "投稿をいいねしました"
    else
      redirect_to articles_url, alert: "いいねに失敗しました"
    end
  end

  def destroy
    @like = current_user.likes.find_by!(article_id: params[:article_id])
    @like.destroy
    redirect_to articles_url, notice: "いいねを解除しました"
  end

end
