class CommentsController < ApplicationController

    # def index
    #     @comments = Post.find(params[:post_id]).comments
    #     return RedirectToAction("show", "posts");
    # end

    def create
        # User.find(1).posts.find(params[:post_id]).create(comments_params)
        @comment = Comment.new
        @comment.user_id = 1
        @comment.post_id = params[:post_id]
        @comment.comment = params[:comment]
        @comment.save
        redirect_to post_path(params[:post_id])
    end

    def destroy
        @comment = Comment.find(params[:id])
        @comment.delete
        redirect_to post_path(@comment.post_id)
    end
    
    # def comments_params
    #     params.permit(:post_id, :comment, :commit, :authenticity_token)
    # end
end
