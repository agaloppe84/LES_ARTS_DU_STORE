class BrandsController < ApplicationController
  before_action :set_brand, only: [:show, :edit, :update, :destroy]

  def index
    @brands = Brand.all
  end

  def show
  end

  def new
    @brand = Brand.new
  end

  def create
    @brand = Brand.new(brand_params)
    if @brand.save
      redirect_to dashboard_path, notice: "La marque #{@brand.name} à été crée"
    else
      render :new
    end
  end

  def edit
  end

  def update
    @brand.update(brand_params)
    redirect_to dashboard_path, notice: "La marque #{@brand.name} à été mise à jour"
  end

  def destroy
    @brand.destroy
    redirect_to dashboard_path, notice: "La marque #{@brand.name} à été effacée"
  end




  private

  def set_brand
    @brand = Brand.find(params[:id])
  end

  def brand_params
    params.require(:brand).permit(:name, :product_id, :logo)
  end
end
