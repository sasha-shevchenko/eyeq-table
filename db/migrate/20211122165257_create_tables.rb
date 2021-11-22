class CreateTables < ActiveRecord::Migration[6.1]
  def change
    create_table :tables do |t|
      t.references :restaurant, null: false, foreign_key: true
      t.string :qr_code
      t.integer :number
      t.boolean :occupied, default: false

      t.timestamps
    end
  end
end
