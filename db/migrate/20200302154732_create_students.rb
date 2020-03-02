class CreateStudents < ActiveRecord::Migration[6.0]
  def change
    create_table :students do |t|
      t.string :name
      t.string :token
      t.references :classroom, null: false, foreign_key: true
      t.references :photo, null: false, foreign_key: true

      t.timestamps
    end
    add_index :students, :token, unique: true
  end
end
