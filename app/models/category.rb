class Category < ApplicationRecord
  belongs_to :restaurant
  has_many :items, dependent: :destroy
  has_one_attached :photo
  validates :name, uniqueness: { scope: :restaurant, case_sensitive: false }
  validates :name, presence: true, length: { in: 2..15,
                                             too_long: "Category title length should be between 2 and 20 characters" }
end
