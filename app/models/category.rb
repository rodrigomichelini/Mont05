class Category < ApplicationRecord
  has_many :products, as: :productable
  validates :name, presence: true
end
