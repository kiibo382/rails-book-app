class CreateBooks < ActiveRecord::Migration[6.0]
  def change
    create_table :books do |t|
      t.string :title
      t.text :content
      t.references :author, null: false, foreign_key: true

      t.timestamps
    end
    add_index :books, [:author_id, :created_at]
  end
end
