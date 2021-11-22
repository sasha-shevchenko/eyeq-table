class CreateSessions < ActiveRecord::Migration[6.1]
  def change
    create_table :sessions do |t|
      t.references :table, null: false, foreign_key: true
      t.boolean :done, default: false

      t.timestamps
    end
  end
end
