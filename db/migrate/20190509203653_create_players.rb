class CreatePlayers < ActiveRecord::Migration[5.2]
  def change
    create_table :players do |t|
      t.references :users
      t.integer :points

      t.timestamps
    end
  end
end
