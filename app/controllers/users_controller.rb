class UsersController < ApplicationController

  def index
   	@users = User.all
  end

  def new
   @user = User.new
  end

  def create
   @user = User.new(user_params)
   if @user.save
    redirect_to '/companies'
   else
    render 'new'
   end
  end

  def show
  end

  def to_s
  User.first_name
  end

  private
  def user_params
   params.require(:user).permit(:first_name, :last_name, :role, :company_id)
 end

end
