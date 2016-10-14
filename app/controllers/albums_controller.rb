class AlbumsController < ApplicationController
  before_action :set_album, only: [:show, :edit, :update, :destroy]
  skip_before_action :authenticate_user!, only: [:show, :index, :edit, :update, :new, :create]

  def index
    @albums = Album.all
  end

  def show
  end

  def new
    @album = Album.new
  end

  def create
    @album = Album.new(album_params)
    if @album.save
      redirect_to dashboard_path, notice: "L'album #{@album.name} à été crée"
    else
      render :new
    end
  end

  def edit
    @hp_album = Album.where( "name = 'homepage'" ).last
  end

  def update
    @hp_album = Album.where( "name = 'homepage'" ).last
    @album.update(album_params)
    redirect_to dashboard_path, notice: "L'album #{@album.name} à été mis à jour"
  end

  def destroy
    @album.destroy
    redirect_to dashboard_path, notice: "L'album #{@album.name} à été effacé"
  end


  private

  def set_album
    @album = Album.find(params[:id])
  end

  def album_params
    params.require(:album).permit(:name, :type_id, photos: [])
  end

end
