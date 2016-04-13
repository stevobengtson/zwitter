class CreateZombies < ActiveRecord::Migration
  def change
    create_table :zombies do |t|
      t.string :name
      t.references :graveyard, index: true, foreign_key: true, null: false
      t.string :status

      t.timestamps null: false
    end
  end
end
