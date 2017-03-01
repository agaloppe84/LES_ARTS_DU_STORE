class AddAddressToQuotation < ActiveRecord::Migration
  def change
    add_column :quotations, :address, :string
  end
end
