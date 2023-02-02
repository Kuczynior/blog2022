module Admin
  class CommentsController < ApplicationController
    def destroy
      Comment.find(params[:id]).destroy
      redirect_to admin_articles_path
    end
  end
end