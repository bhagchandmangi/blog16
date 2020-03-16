class CommentsController < ApplicationController
  def create
    @article = Article.find(params[:article_id]);
    @comment = @article.comment.create(comment_params)
    redirect_to article_path(article)
  end

  def new
  end

  def destroy
    @article = Article.find(params[;article_id])
    @comment = @article.comments.find(params[:id])
    redirect_to article_path(article)
  end

  private
  def comment_params
    params.require(:comment).permit(:name, :text)
end
