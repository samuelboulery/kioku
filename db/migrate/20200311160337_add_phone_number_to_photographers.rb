class AddPhoneNumberToPhotographers < ActiveRecord::Migration[6.0]
  def change
    add_column :photographers, :phone_number, :string
  end
end
