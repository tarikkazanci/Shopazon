class Store < ApplicationRecord
  has_many :products, dependent: :destroy

  validates :name, :location, presence: true
end
