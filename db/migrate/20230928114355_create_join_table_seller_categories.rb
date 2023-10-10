class CreateJoinTableSellerCategories < ActiveRecord::Migration[7.0]
  def change
    # create_join_table :categories, :sellers do |t|
    #   # t.index [:category_id, :seller_id]
    #   # t.index [:seller_id, :category_id]
    # end
    add_column :categories, :name, :string
  end
end
