class CreateRooms < ActiveRecord::Migration[5.2]
  def change
    create_table :rooms do |t|
      t.string :name
      t.boolean :game_started
      t.integer :visibility
      t.references :owner, references: :users
      t.references :czar, references: :players
      t.references :players

      t.timestamps
    end
  end
end
