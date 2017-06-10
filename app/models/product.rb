class Product < ApplicationRecord
    belongs_to :store

    validates :name, :price, {presence: true}

  # when devise comes use optional: true
end
