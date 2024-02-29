class UsersController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]
  before_action :set_user, only: [:edit, :update]

  def index
    @users = User.order(first_name: :asc)
  end

  def edit; end

  def update
    if @user.update(user_params)
      redirect_to users_path
    else
      render "edit"
    end
  end

  private

  def set_user
     @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:first_name, 
                                 :last_name,
                                 :phone_number,
                                 :line1,
                                 :neighborhood)
  end
end
