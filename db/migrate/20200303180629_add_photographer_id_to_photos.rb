class AddPhotographerIdToPhotos < ActiveRecord::Migration[6.0]
  def change
    add_reference :photos, :photographer, null: false, foreign_key: true
  end
end
