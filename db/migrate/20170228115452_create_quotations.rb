class CreateQuotations < ActiveRecord::Migration
  def change
    create_table :quotations do |t|
      t.string :email
      t.string :name
      t.string :firstname
      t.string :city
      t.string :phone
      t.string :zipcode
      t.string :blindttype
      t.text :message

      t.timestamps null: false
    end
  end
end
