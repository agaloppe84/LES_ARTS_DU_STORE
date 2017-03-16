class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :services, :devis, :contact, :promo, :photos]
  def home

    @fontastic_icons = ["icon-android-clipboard",
                        "icon-android-cloud-outline",
                        "icon-android-open",
                        "icon-bug",
                        "icon-code-download",
                        "icon-paintbucket",
                        "icon-fold",
                        "icon-hourglass",
                        "icon-light-bulb",
                        "icon-pulse",
                        "icon-squirrel",
                        "icon-cloud-rain",
                        "icon-download",
                        "icon-camera-1",
                        "icon-cloud-sun",
                        "icon-adjust",
                        "icon-cloud",
                        "icon-home-wifi",
                        "icon-alert",
                        "icon-droplet",
                        "icon-feather",
                        "icon-hourglass-1",
                        "icon-light-up",
                        "icon-thermometer-1",
                        "icon-isight",
                        "icon-android-close",
                        "icon-android-done",
                        "icon-aperture",
                        "icon-camera",
                        "icon-flame",
                        "icon-paintbrush",
                        "icon-flame-1",
                        "icon-key",
                        "icon-lock",
                        "icon-rss",
                        "icon-bug-1",
                        "icon-compass",
                        "icon-paper-airplane",
                        "icon-boat",
                        "icon-thermometer",
                        "icon-arrow-oblique-contract",
                        "icon-drops",
                        "icon-locked",
                        "icon-battery",
                        "icon-eye",
                        "icon-flash-1",
                        "icon-info",
                        "icon-lock-1",
                        "icon-target",
                        "icon-measure",
                        "icon-android-color-palette",
                        "icon-android-exit",
                        "icon-arrow-right-b",
                        "icon-clock",
                        "icon-flash",
                        "icon-radio-waves",
                        "icon-git-commit",
                        "icon-law",
                        "icon-plug",
                        "icon-zap",
                        "icon-clipboard",
                        "icon-crosshairpinpoint",
                        "icon-umbrella",
                        "icon-camera-1-1",
                        "icon-paint-bucket",
                        "icon-bolt",
                        "icon-euro",
                        "icon-adjust-1",
                        "icon-bucket",
                        "icon-flag",
                        "icon-flashlight",
                        "icon-key-1",
                        "icon-shareable",
                        "icon-lock-alt",
                        "icon-cloud-1"
                       ]


    @products = Product.all
    @promos = Promo.all
    @albums = Album.all
    @last_promo = Promo.where("current = 'true'").last
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

  def photos
    @albums = Album.all
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

  def quotaconfirm

  end

  def promotions
    @last_promo = Promo.all.last
  end

end
