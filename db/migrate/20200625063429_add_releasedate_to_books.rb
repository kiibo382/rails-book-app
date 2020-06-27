class AddReleasedateToBooks < ActiveRecord::Migration[6.0]
  def change
    add_column :books, :releasedate, :date, null: false
  end
end
