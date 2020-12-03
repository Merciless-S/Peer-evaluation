class CommentsController < ApplicationController
  def new
    @@teammate = User.find(params[:peer_id])
    @comment = Comment.new

  end
  def create
    #@teammate = User.find(params[:peer_id])
    @comment = Comment.new({
                             score: params[:score],
                             from_user: current_user.id,
                             to_user: @@teammate.id,
                             content: params[:content]
                           })

    respond_to do |format|
      #todo
    end
  end

  def destroy

  end
end
