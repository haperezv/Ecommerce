class Category < ApplicationRecord
    has_many :product_categories
    has_many :products
    extend FriendlyId
    friendly_id :name, use: :slugged
    has_one_attached :image, :dependent => :destroy
end
