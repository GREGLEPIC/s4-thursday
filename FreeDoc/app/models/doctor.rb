class Doctor < ApplicationRecord
    has_many :appointments
    has_many :patients, through: :appointments
    belongs_to :city
    has_many :spectalties, through: :doctors_specialties
end
