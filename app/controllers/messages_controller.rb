class MessagesController < ApplicationController
    def create
        @article = Article.find(params[:article_id])
        @message = @article.messages.create(comment_params)
        redirect_to article_path(@article)
      end
     
      private
        def comment_params
          params.require(:message).permit(:commenter, :body)
        end
end
