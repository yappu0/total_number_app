class CreateCards < ActiveRecord::Migration[7.1]
  def change
    create_table :cards do |t|
      t.integer :value, null: false, default: 1
      t.references :player, null: false, foreign_key: true

      t.timestamps
    end
  end
end
