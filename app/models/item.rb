class Item < ApplicationRecord
  belongs_to :category
  has_many :session_items # no " dependent: :destroy " as we don't wanna destory belonging history of 'session-items' for that specific item.

  validates :name, uniqueness: { case_sensitive: false }
  validates :name, presence: true, length: { in: 5..10,
                                             too_long: "%{count} Item title length should be between 5 and 10 characters" }

  validates :description, uniqueness: { case_sensitive: false }
  validates :description, presence: true, length: { in: 5..100,
                                             too_long: "%{count} Item title length should be between 5 and 100 characters" }

  validates :price, presence: true, numericality: { only_integer: true, :greater_than 0}

end
