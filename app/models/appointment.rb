class Appointment < ApplicationRecord
  belongs_to :doctor
  belongs_to :patient
  belongs_to :cities, class_name: "City"
end
