class CreateBooks < ActiveRecord::Migration[6.0]
  def change
    create_table :books do |t|
      t.string :user_id
      t.string :book_name
      t.text :description
      t.timestamps
    end
  end
end
