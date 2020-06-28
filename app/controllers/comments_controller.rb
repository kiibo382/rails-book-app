class CommentsController < ApplicationController
  def create
    book = Book.find(params[:book_id])
    @comment = book.comments.build(comment_params)
    @comment.user_id = current_user.id
    if @comment.save
      flash[:success] = "コメントしました"
      redirect_back(fallback_location: root_path)
    else
      flash[:success] = "コメントできませんでした"
      redirect_back(fallback_location: root_path)
    end
  end
  
  private

    def comment_params
      params.require(:comment).permit(:content, :book_id, :user_id, :parent_id)
    end
end
