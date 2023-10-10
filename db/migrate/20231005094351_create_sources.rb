class CreateSources < ActiveRecord::Migration[7.0]
  def change
    create_table :sources do |t|
      t.string :title
      t.integer :art_id
      t.integer :event_id
      t.integer :news_id

      t.timestamps
    end
  end
end
