class AddPolymorphicAttrToSource < ActiveRecord::Migration[7.0]
  def change
    add_column :sources, :sourcable_type, :string
    add_column :sources, :sourcable_id, :integer
    remove_column :sources, :art_id, :integer
    remove_column :sources, :event_id, :integer
    remove_column :sources, :news_id, :integer
  end
end
