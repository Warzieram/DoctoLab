class DropSpecialty < ActiveRecord::Migration[7.2]
  def change
    remove_column :doctors, :specialty
  end
end
