class CreatePassports < ActiveRecord::Migration[7.0]
  def change
    create_table :passports do |t|
      t.integer :pass_number
      t.references :person, null: false, foreign_key: true

      t.timestamps
    end
  end
end
