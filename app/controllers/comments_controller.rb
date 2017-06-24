class CommentsController < ApplicationController

  def create
    @post = Post.find(params[:post_id])
    @comment = @post.commentss.new(comment_params)

    respond_to do |format|
      if @comment.save
        format.html { redirect_to @post, notice: "Comment was created succesfully." }
      else
        format.html { redirect_to @post, alert: "Comment was not saved succesfully." }
      end
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:post_id, :body)
  end
end