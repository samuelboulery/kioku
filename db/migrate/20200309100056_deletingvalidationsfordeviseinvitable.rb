class Deletingvalidationsfordeviseinvitable < ActiveRecord::Migration[6.0]
  def change
    change_column_null(:schools, :address, true)
    change_column_null(:schools, :photographer_id, true)
  end
end
