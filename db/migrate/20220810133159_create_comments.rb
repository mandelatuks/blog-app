class CreateComments < ActiveRecord::Migration[7.0]
  def change
    create_table :comments do |t|
      t.integer :Author_id, foreign_key: true
      t.integer :Post_id, foreign_key: true
      t.text :Text

      t.timestamps
    end
    add_foreign_key :comments, :users, column: :Author_id
    add_index :comments, :Author_id

    add_foreign_key :comments, :posts, column: :Post_id
    add_index :comments, :Post_id
  end
end
