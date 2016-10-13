class AddProductToPowers < ActiveRecord::Migration
  def change
    add_reference :powers, :product, index: true, foreign_key: true
  end
end
