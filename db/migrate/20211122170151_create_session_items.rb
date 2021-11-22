class CreateSessionItems < ActiveRecord::Migration[6.1]
  def change
    create_table :session_items do |t|
      t.boolean :sent_to_kitchen, default: false
      t.boolean :served_to_table, default: false
      t.integer :quantity
      t.references :session, null: false, foreign_key: true
      t.references :item, null: false, foreign_key: true

      t.timestamps
    end
  end
end
