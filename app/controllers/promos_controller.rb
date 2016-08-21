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
    @promo.save
  end

  def edit
  end

  def update
    @promo.update(promo_params)
  end

  def destroy
    @promo.destroy
  end



  private

  def set_promo
    @promo = Promo.find(params[:id])
  end

  def promo_params
    params.require(:promo).permit(:title, :description, :start, :end, :type, photos: [])
  end

end
