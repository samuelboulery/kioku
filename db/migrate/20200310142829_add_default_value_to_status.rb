class AddDefaultValueToStatus < ActiveRecord::Migration[6.0]
  def change
    change_column :schools, :status, :string, default: "Uploads"
  end
end
