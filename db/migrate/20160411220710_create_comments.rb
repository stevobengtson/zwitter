class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :message
      t.references :zombie, index: true, foreign_key: true, null: false
      t.integer :commentable_id, null: false
      t.string :commentable_type, null: false
      t.timestamps null: false
    end
  end
end
