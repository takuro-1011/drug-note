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

  def show
    @drug = Drug.find(params[:id])
  end

  def edit
    @drug = Drug.find(params[:id])
  end

  def update
    @drug = Drug.find(params[:id])
    if @drug.update(drug_params) # updateメソッドの引数tweet_paramsでは、どの情報を更新するかを指定
      redirect_to drug_path
    else
      render :edit
    end
  end

  private
  def drug_params
    params.require(:drug).permit(:drug_name, :hospital, :effect, :day_id, :image).merge(user_id: current_user.id)
  end
end
