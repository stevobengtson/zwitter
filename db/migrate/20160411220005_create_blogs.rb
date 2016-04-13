class CreateBlogs < ActiveRecord::Migration
  def change
    create_table :blogs do |t|
      t.string :title
      t.text :body
      t.references :zombie, index: true, foreign_key: true, null: false

      t.timestamps null: false
    end
  end
end
