module Admin
  class UsersController < ApplicationController
    def index
      @users = User.all
    end
    
    def new
      @user = User.new
    end
        
    def edit
      @user = User.find(params[:id])
    end
    
    def update
      @user = User.find(params[:id])
      
      if @user.update(user_params)
        redirect_to admin_users_path
      else
        render :edit, status: :unprocessable_entity
      end
    end
    
    def show
      @user = User.find(params[:id])
    end
    
    def user_params
      params.require(:user).permit(:email, :password)
    end
    
    def destroy
      @user=User.find(params[:id]).destroy
      redirect_to admin_users_path
    end
  end
end