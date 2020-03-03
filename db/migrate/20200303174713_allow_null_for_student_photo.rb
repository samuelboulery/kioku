class AllowNullForStudentPhoto < ActiveRecord::Migration[6.0]
  def change
    change_column_null(:students, :photo_id, true)
  end
end
