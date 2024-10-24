class DropZipcode < ActiveRecord::Migration[7.2]
  def change
    remove_column :doctors, :zip_code
  end
end
