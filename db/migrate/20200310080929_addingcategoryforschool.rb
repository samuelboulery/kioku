class Addingcategoryforschool < ActiveRecord::Migration[6.0]
  def change
    add_column :schools, :category, :string
  end
end
