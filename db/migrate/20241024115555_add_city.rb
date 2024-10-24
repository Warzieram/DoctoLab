class AddCity < ActiveRecord::Migration[7.2]
  def change
    add_reference :doctors, :cities, foreign_key: true
    add_reference :appointments, :cities, foreign_key: true
    add_reference :patients, :cities, foreign_key: true
  end
end
