class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.string :title
      t.text :content
      t.string :url
      t.integer :language

      t.timestamps
    end
  end
end
