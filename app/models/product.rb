class Product < ApplicationRecord
  #belongs_to :productable, :polymorphic => true

  has_one :videocard, dependent: :destroy
  #has_many :prices, through: :stores (verificar se é possível estabelecer uma relação many to many concomitante com a relação polimórfica, ou se mesmo a relação com o preço e a loja tem que se valer da polimórfica)

  validates :platform, presence: { message: "deverá ser especificada." }
  validates :name, presence: { message: "deverá ser especificado." }

  validates_associated :videocard

end
