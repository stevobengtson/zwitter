class CreateGrunts < ActiveRecord::Migration
  def change
    create_table :grunts do |t|
      t.string :message
      t.references :zombie, index: true, foreign_key: true, null: false

      t.timestamps null: false
    end
  end
end
