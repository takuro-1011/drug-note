class DrugsController < ApplicationController
  def index
    @drugs = Drug.includes(:user)
  end

  def new
    @drug = Drug.new
  end

  def create
    @drug = Drug.new(drug_params)
    if @drug.save
      redirect_to root_path
    else
      render :new
    end
  end

  private
  def drug_params
    params.require(:drug).permit(:drug_name, :hospital, :effect, :day_id, :image).merge(user_id: current_user.id)
  end
end
