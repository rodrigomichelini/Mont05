class Videocard < ApplicationRecord
  belongs_to :product

  validates :tdp, presence: true
end
