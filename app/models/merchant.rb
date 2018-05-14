class Merchant < ApplicationRecord
  has_many :users
  has_many :locations
end
