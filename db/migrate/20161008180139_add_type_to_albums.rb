class AddTypeToAlbums < ActiveRecord::Migration
  def change
    add_reference :albums, :type, index: true, foreign_key: true
  end
end
