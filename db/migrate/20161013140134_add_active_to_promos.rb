class AddActiveToPromos < ActiveRecord::Migration
  def change
    add_column :promos, :current, :boolean
  end
end
