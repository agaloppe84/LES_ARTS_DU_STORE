class AddPlurnameToTypes < ActiveRecord::Migration
  def change
    add_column :types, :plurname, :string
  end
end
