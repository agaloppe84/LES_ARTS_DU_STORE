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
    @type.update(type_params)
  end

  def destroy
    @type.destroy
  end




  private

  def set_type
    @type = Type.find(params[:id])
  end

  def type_params
    params.require(:type).permit(:name)
  end


end
