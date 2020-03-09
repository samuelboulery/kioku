class Deviseinvitablechangevalidation < ActiveRecord::Migration[6.0]
  def change
    change_column_null(:schools, :address, true)
  end

  def change
    change_column_null(:schools, :photographer_id, true)
  end

  def change
    change_column_null(:schools, :name, true)
  end
end
