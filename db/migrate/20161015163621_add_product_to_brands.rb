class AddProductToBrands < ActiveRecord::Migration
  def change
    add_reference :brands, :product, index: true, foreign_key: true
  end
end
