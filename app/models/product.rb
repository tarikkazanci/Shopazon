class Product < ApplicationRecord
    belongs_to :store

    validates :name, :price, {presence: true}
end
