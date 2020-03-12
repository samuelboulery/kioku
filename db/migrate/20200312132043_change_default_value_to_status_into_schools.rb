class ChangeDefaultValueToStatusIntoSchools < ActiveRecord::Migration[6.0]
  def change
    change_column_default(:schools, :status, from: "Uploads", to: "Chargement")
  end
end
