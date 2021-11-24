class Item < ApplicationRecord
  belongs_to :category
  has_many :session_items, dependent: :destroy

  validates :name, uniqueness: { scope: :category, case_sensitive: false }
  validates :name, presence: true, length: { in: 2..10,
                                             too_long: "Item title length should be between 2 and 10 characters" }

  validates :description, presence: true, length: { in: 5..150,
                                                    too_long: "Item title length should be between 5 and 120 characters" }

  validates :price, presence: true, numericality: { greater_than: 0 }
end
