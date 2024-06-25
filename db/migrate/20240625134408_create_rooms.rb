class CreateRooms < ActiveRecord::Migration[7.1]
  def change
    create_table :rooms do |t|
      t.string :status, null: false, default: ''

      t.timestamps
    end
  end
end
