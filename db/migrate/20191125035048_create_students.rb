class CreateStudents < ActiveRecord::Migration[6.0]
  def change
    create_table :students do |t|
      t.integer :user_id
      t.integer :school_id
      t.string :nis
      t.timestamps
    end
  end
end
