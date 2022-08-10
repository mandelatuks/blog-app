class CreateLikes < ActiveRecord::Migration[7.0]
  def change
    create_table :likes do |t|
      t.integer :Author_id, foreign_key: true
      t.integer :Post_id, foreign_key: true

      t.timestamps
    end
    add_foreign_key :likes, :users, column: :Author_id
    add_index :likes, :Author_id

    add_foreign_key :likes, :posts, column: :Post_id
    add_index :likes, :Post_id
  end
end
