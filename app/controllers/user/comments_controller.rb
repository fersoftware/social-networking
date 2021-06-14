class User::CommentsController < UserController
    skip_before_action :verify_authenticity_token, only: :like_toggle
  
    def create
     f_params = form_params.merge(user:current_user)
     @comment = Comment.new(f_params)
     @post = @comment.post

     if @comment.save
        respond_to do |format| 
          format.js { render "create" }
        end
     end
    end
  
    def destroy
      @comment = Comment.find(id: params[:id])
      @post = @comment.post

      if @comment.destroy
        respond_to do |format| 
          format.js { render "destroy" }
        end
      end

    end
  
   
  
    private
  
    def form_params
      params.require(:post).permit(:body, :post_id)
    end
  
  end