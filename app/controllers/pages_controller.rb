class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :services, :devis, :contact]
  def home

    # @album = Album.all.last
    @album = Album.where( "name = 'homepage'" ).last
    @products = Product.all

  end

  def services
  end

  def devis
  end

  def contact
  end

  def dashboard
    @products = Product.all
    @albums = Album.all
    @infos = Info.all
    @promos = Promo.all
    @types = Type.all
    @brands = Brand.all
  end

end
