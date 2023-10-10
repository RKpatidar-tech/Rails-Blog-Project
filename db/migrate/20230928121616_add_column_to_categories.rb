class AddColumnToCategories < ActiveRecord::Migration[7.0]
  def change
    add_column :categories_sellers, :name, :string
    add_column :categories_sellers, :age, :string
  end
end
