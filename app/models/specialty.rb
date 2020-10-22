class Specialty < ApplicationRecord
  has_many :specs
  has_many :doctors, through: :specs
end
