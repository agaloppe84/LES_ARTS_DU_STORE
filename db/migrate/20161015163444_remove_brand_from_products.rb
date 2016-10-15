class RemoveBrandFromProducts < ActiveRecord::Migration
  def change
    remove_reference :products, :brand, index: true, foreign_key: true
  end
end
