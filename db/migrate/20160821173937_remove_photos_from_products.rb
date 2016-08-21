class RemovePhotosFromProducts < ActiveRecord::Migration
  def change
    remove_column :products, :photos, :string
  end
end
