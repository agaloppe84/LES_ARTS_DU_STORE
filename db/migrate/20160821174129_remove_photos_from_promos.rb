class RemovePhotosFromPromos < ActiveRecord::Migration
  def change
    remove_column :promos, :photos, :string
  end
end
