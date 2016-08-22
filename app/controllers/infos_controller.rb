class InfosController < ApplicationController
  before_action :find_product, only: [ :new, :create ]
  skip_before_action :authenticate_user!, only: [:new, :create]

  def new
    @info = Info.new
  end

  def create
    @info = @product.infos.build(info_params)
    if @info.save
      redirect_to product_path(@product), notice: "L'info a été crée"
    else
      render :new
    end
  end

  private

  def info_params
    params.require(:info).permit(:title, :product_id, :content, :icon)
  end
  def find_product
    @product = Product.find(params[:product_id])
  end
end
