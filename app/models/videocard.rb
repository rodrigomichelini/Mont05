class Videocard < ApplicationRecord
  belongs_to :product

  validates :tdp, presence: { message: "deverá ser especificado." }
end
