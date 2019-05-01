class CreateBlackCards < ActiveRecord::Migration[5.2]
  def change
    create_table :black_cards do |t|
      t.string :text
      t.integer :pick
      t.timestamps
    end
  end
end
