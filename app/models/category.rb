class Category < ApplicationRecord
  #has_many :products, as: :productable
  validates :name, presence: { message: "deverá ser especificado." }
