class ProductsController < ApplicationController
  before_action :find_type, only: [ :new, :create, :edit, :update, :destroy, :show, :index ]
  skip_before_action :authenticate_user!, only: [:show, :index, :edit, :update]

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
    @vr_album = Album.where( "name = 'volet roulant'" ).last
    @si_album = Album.where( "name = 'store interieur'" ).last
    @se_album = Album.where( "name = 'store exterieur'" ).last
    @mo_album = Album.where( "name = 'moustiquaire'" ).last
    @pe_album = Album.where( "name = 'pergola'" ).last
    @pdg_album = Album.where( "name = 'porte de garage'" ).last
    @me_album = Album.where( "name = 'menuiserie'" ).last
  end

  def show
    @product = Product.find(params[:id])
  end

  def new
    @product = Product.new
    render layout: false
  end

  def create
    @product = @type.products.build(product_params)
    if @product.save
      redirect_to dashboard_path(@product), notice: "#{@product.title} à été crée"
    else
      render :new
    end
  end

  def edit
    @product = Product.find(params[:id])
    render layout: false
  end

  def update
    @product = Product.find(params[:id])
    @product.update(product_params)
    redirect_to dashboard_path(@product), notice: "#{@product.title} à été mis à jour"
  end

  def destroy
    @product = Product.find(params[:id])
    @product.destroy
    redirect_to dashboard_path, notice: "#{@product.title} à été effacé"
  end


  private

  def set_product
    @product = Product.find(params[:id])
  end

  def find_type
    @type = Type.find(params[:type_id])
  end

  def product_params
    params.require(:product).permit(:title, :description, :type_id, photos: [])
  end
end
