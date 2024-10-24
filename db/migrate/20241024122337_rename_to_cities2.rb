class RenameToCities2 < ActiveRecord::Migration[7.2]
  def change
    rename_column :doctors, :cities_id, :city_id
    rename_column :patients, :cities_id, :city_id
    rename_column :appointments, :cities_id, :city_id
  end
end
