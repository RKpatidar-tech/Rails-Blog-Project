class AddDetailsToSellers < ActiveRecord::Migration[7.0]
  def change
    add_column :sellers, :price, :decimal, precision: 5, scale: 2
    add_reference :sellers, :supplier, polymorphic: true, null: false
  end
end
