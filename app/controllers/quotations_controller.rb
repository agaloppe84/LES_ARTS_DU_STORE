class QuotationsController < ApplicationController
  before_action :set_quotation, only: [:edit, :update, :destroy]
  skip_before_action :authenticate_user!, only: [:new, :create, :show]

  def index
    @quotations = Quotation.all
  end

  def show
  end

  def new
    @quotation = Quotation.new
    @typesname = []
    Type.all.each do |type|
      @typesname << type.name.capitalize
    end
  end

  def create
    @quotation = Quotation.new(quotation_params)
    if @quotation.save
      redirect_to confirmation_path(name: @quotation.name, firstname: @quotation.firstname, email: @quotation.email)
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @quotation.update(quotation_params)
      redirect_to dashboard_quotations_path, notice: "Le devis #{@quotation.id} à été mis à jour"
    else
      render :new
    end
  end

  def destroy
    @quotation.destroy
    redirect_to dashboard_path, notice: "Devis effacé : #{@quotation.id}"
  end



  private

  def set_quotation
    @quotation = Quotation.find(params[:id])
  end

  def quotation_params
    params.require(:quotation).permit(:email, :name, :firstname, :city, :phone, :zipcode, :blindttype, :message, :address, :treated)
  end
end
