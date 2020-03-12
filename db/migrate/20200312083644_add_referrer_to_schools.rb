class AddReferrerToSchools < ActiveRecord::Migration[6.0]
  def change
    add_column :schools, :referrer_name, :string
  end
end
