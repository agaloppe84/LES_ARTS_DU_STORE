class AddPhotoToPromos < ActiveRecord::Migration
  def change
    add_column :promos, :photo, :string
  end
end
