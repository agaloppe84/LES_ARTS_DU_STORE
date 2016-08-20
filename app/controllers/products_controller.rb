class ProductsController < ApplicationController
  before_action :set_product, only: [:show, :edit, :update, :destroy]

  def index
    @products = Product.all
    @moustiquaires = @products.joins(:type).where( "types.name = 'moustiquaire'" ).references(:type)
    @store_exterieurs = @products.joins(:type).where( "types.name = 'store exterieur'" ).references(:type)
    @store_interieurs = @products.joins(:type).where( "types.name = 'store interieur'" ).references(:type)
    @menuiseries = @products.joins(:type).where( "types.name = 'menuiserie'" ).references(:type)
    @pergolas = @products.joins(:type).where( "types.name = 'pergola'" ).references(:type)
    @volets_roulant = @products.joins(:type).where( "types.name = 'volet roulant'" ).references(:type)
    @portes_de_garage = @products.joins(:type).where( "types.name = 'porte de garage'" ).references(:type)
    @types = Type.all
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
    params.require(:product).permit(:title, :description, :type_id, :photos, :photo_cache)
  end
end
