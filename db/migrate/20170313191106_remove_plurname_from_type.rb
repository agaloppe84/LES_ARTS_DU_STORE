class RemovePlurnameFromType < ActiveRecord::Migration
  def change
    remove_column :types, :plurname, :string
  end
end
