class RemoveForeignKeyFromFlats < ActiveRecord::Migration[6.0]
  def change
    remove_reference :flats, :city, null: true, foreign_key: true
  end
end
