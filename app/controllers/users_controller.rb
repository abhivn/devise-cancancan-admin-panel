class UsersController < ApplicationController
  load_and_authorize_resource
  def index
    # @users = User.all
    @user = User.new
  end

  def change_role
    @user = User.find(params[:id])
    @user.role = params[:role]
    @user.save
    render json: @user
  end

  def delete_user
    @user = User.find(params[:id])
    @user.destroy
    render json: {status: :ok}
  end

  def edit_user
    @user = User.find(params[:id])
    render json: @user
  end

  def update_user
    @user = User.find(params[:idd])
    @user.first_name = params[:user][:first_name]
    @user.last_name = params[:user][:last_name]
    @user.email = params[:user][:email]
    @user.save
    render json: @user
  end

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :idd)
  end
end
