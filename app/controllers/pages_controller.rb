class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :services, :devis, :contact, :promo]
  def home

    # @album = Album.all.last
    @album = Album.where( "name = 'homepage'" ).last
    @products = Product.all
    @promos = Promo.all
    @albums = Album.all

    @photos = 0

    @albums.each do |album|
      album.photos.count
      @photos = @photos + album.photos.count
    end

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

  def promo
    @last_promo = Promo.all.last
  end

end
