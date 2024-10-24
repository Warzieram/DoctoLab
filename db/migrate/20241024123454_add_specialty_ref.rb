class AddSpecialtyRef < ActiveRecord::Migration[7.2]
  def change
    add_reference :doctors, :specialties, foreign_key: true
    rename_column :doctors, :specialties_id, :specialty_id
  end
end
