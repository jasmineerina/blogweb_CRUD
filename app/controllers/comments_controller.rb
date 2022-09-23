class CommentsController < ApplicationController
    before_action :set_comment, except: %i[create]

    def create
        # @post = Post.find(params[:post_id])
        # @comment = @post.comments.create(comment_params.merge(user_id: current_user.id))
        @comment = Comment.create(comment_params.merge(user_id: current_user.id))
        redirect_to post_path(:post_id)
    end

    def destroy
    if @user == true
        @comment.destroy

        respond_to do |format|
          format.html { redirect_to post_path(:post_id), notice: "Comment was successfully destroyed." }
          format.json { head :no_content }
        end
    else
        redirect_to post_path(:post_id), notice: "you can't delete that not yours!"
    end
    end


    private

    def set_comment
        @comment = Comment.find(params[:id])
    end

    def comment_params
        params.require(:comment).permit(:post_id, :content)
    end

    def check_user
        @user = false
        if(@comment.user.id == current_user.id)
          return @user = true
        else
          return @user
        end
      end
end
