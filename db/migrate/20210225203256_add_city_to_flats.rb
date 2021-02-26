class AddCityToFlats < ActiveRecord::Migration[6.0]
  def change
    add_reference :flats, :city, null: true, foreign_key: true
  end
end
