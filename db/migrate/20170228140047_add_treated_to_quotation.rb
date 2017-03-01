class AddTreatedToQuotation < ActiveRecord::Migration
  def change
    add_column :quotations, :treated, :boolean, default: false
  end
end
