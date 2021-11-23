class Category < ApplicationRecord
  belongs_to :restaurant
  has_many :items, dependent: :destroy

  validates :name, uniqueness: { case_sensitive: false }
  validates :name, presence: true, length: { in: 5..20,
                                             too_long: "%{count} Category title length should be between 5 and 20 characters" }
end
