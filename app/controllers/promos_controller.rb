class PromosController < ApplicationController
  before_action :set_promo, only: [:show, :edit, :update, :destroy]

  def index
    @promos = Promo.all
  end

  def show
  end

  def new
    @promo = Promo.new
  end

  def create
    @promo = Promo.new(promo_params)
    if @promo.save
      redirect_to dashboard_path, notice: "La promo à été crée"
    else
      render :new
    end
  end

  def edit
  end

  def update
    @promo.update(promo_params)
    redirect_to dashboard_path, notice: "La promo à été mise à jour"
  end

  def destroy
    @promo.destroy
    redirect_to dashboard_path, notice: "La promo à été effacée"
  end



  private

  def set_promo
    @promo = Promo.find(params[:id])
  end

  def promo_params
    params.require(:promo).permit(:title, :description, :start, :current, :end, :type_id, photos: [])
  end

end
