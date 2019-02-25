class AdminUsersController < ApplicationController
  def index
    @all_users = AdminUser.all
  end
  
  def create 
    @admin_user = AdminUser.new(user_params)
    if @admin_user.save      
      redirect_to root_path
    else
      render 'new'
    end
  end

  def new
    @admin_user = AdminUser.new
  end

  def show
    @user = AdminUser.find(params[:id])
  end

  private
  def user_params
    params.require(:admin_user).permit(:name, :role, :is_admin)
  end
end
