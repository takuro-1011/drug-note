class DrugsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_drug, except: [:index, :new, :create]
  def index
    @drugs = Drug.order('created_at DESC')
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

  def show
  end

  def edit
  end

  def update
    if @drug.update(drug_params)
      redirect_to drug_path
    else
      render :edit
    end
  end

  def destroy
    if @drug.destroy
      redirect_to user_path(current_user)
    end
  end

  private
  def drug_params
    params.require(:drug).permit(:drug_name, :hospital, :effect, :day_id, :capa_id, :image).merge(user_id: current_user.id)
  end

  def set_drug
    @drug = Drug.find(params[:id])
  end
end
