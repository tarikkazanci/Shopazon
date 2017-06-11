class Product < ApplicationRecord
    belongs_to :store

    validates :name, :price, {presence: true}

    validate :not_iphone
    def not_iphone
      if self.name == "Iphone 7"
      errors.add(:name, "You cannot sell Iphone 7, only Apple can")
    end
  end
  # when devise comes use optional: true
end
