class CreatePosts < ActiveRecord::Migration[7.0]
  def change
    create_table :posts do |t|
      t.integer :Author_id, foreign_key: true
      t.string :Title
      t.text :Text
      t.integer :CommentsCounter
      t.integer :LikesCounter

      t.timestamps
    end
    add_foreign_key :posts, :users, column: :Author_id
    add_index :posts, :Author_id
  end
end
