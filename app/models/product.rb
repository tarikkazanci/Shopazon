class Product < ApplicationRecord
    belongs_to :store

    validates :name, :price, {presence: true}

    belongs_to :user, optional: true

  # many to many
    has_many :orders
    has_many :users, through: :orders

    # validate :not_iphone
    # def not_iphone
    #   if self.name == "Iphone 7"
    #   errors.add(:name, "You cannot sell Iphone 7, only Apple can")
    # end
end
