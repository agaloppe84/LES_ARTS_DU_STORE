class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :services, :devis, :contact, :promo]
  def home

    @products = Product.all
    @promos = Promo.all
    @albums = Album.all
    @last_promo = Promo.all.last
    @types = Type.all

    @photos = 0

    @albums.each do |album|
      album.photos.count
      @photos = @photos + album.photos.count
    end


    @tpv = []

    @albums.each do |album|
      @tpv += album.photos.sample(2)
    end

    @random_album = @tpv

  end

  def services
  end

  def devis
  end

  def contact
  end

  def dashboard

    @hp_album = Album.where( "name = 'homepage'" ).last
    @products = Product.all
    @albums = Album.all
    @infos = Info.all
    @promos = Promo.all
    @types = Type.all
    @brands = Brand.all
    @photos = 0
    @addtab = 0

    @albums.each do |album|
      album.photos.count
      @photos = @photos + album.photos.count
      @photos
    end


  end

  def promotions
    @last_promo = Promo.all.last
  end

  def indexv2
    @types = Type.all
  end

end
