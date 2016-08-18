class ProductsController < ApplicationController
  before_action :set_product, only: [:show, :edit, :update, :destroy]

  def index
    @products = Product.all
  end

  def show
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      redirect_to product_path(@product), notice: "Product has been created"
    else
      render :new
    end
  end

  def edit
  end

  def update
    @product.update(product_params)
  end

  def destroy
    @product.destroy
  end



  private

  def set_product
    @product = Product.find(params[:id])
  end

  def product_params
    params.require(:product).permit(:title, :description, :type, :photos, :photo_cache)
  end
end
