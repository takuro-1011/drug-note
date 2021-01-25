class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @drugs = @user.drugs
  end
end
