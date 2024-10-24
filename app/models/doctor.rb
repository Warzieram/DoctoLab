class Doctor < ApplicationRecord
  has_many :appointments
  has_many :patients, through: :appointments
  has_many :specialties
  belongs_to :cities, class_name: "City"
end
