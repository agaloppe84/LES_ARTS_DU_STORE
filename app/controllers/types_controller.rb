class TypesController < ApplicationController
  before_action :set_type, only: [:show, :edit, :update, :destroy]

  def index
    @types = Type.all
  end

  def show
  end

  def new
    @type = Type.new
  end

  def create
    @type = Product.new(type_params)
    @type.save
  end

  def edit
  end

  def update
    if @type.update(type_params)
      redirect_to dashboard_path, notice: "La catégorie à été mise à jour"
    else
      render :new
    end
  end

  def destroy
    @type.destroy
  end




  private

  def set_type
    @type = Type.find(params[:id])
  end

  def type_params
    params.require(:type).permit(:name, :color, :plurname)
  end


end
