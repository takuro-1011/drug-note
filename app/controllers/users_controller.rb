class UsersController < ApplicationController

  def edit
  end
  
  def update
    if current_user.update(user_params)
      redirect_to root_path
    else
      render :edit
    end
  end

  

  def show
    @user = User.find(params[:id])
    @drugs = @user.drugs
  end

  private
  def user_params
    params.require(:user).permit(:name, :name_kana, :phone_number, :password, :birthday)
  end
end
