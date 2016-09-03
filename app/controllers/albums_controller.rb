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
      redirect_to dashboard_path, notice: "L'album à été crée"
    else
      render :new
    end
  end

  def edit
  end

  def update
    @album.update(album_params)
    redirect_to dashboard_path, notice: "L'album à été mise à jour"
  end

  def destroy
    @album.destroy
    redirect_to dashboard_path, notice: "L'album à été effacé"
  end


  private

  def set_album
    @album = Album.find(params[:id])
  end

  def album_params
    params.require(:album).permit(:name, photos: [])
  end

end
