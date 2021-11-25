class Session < ApplicationRecord
  belongs_to :table
  has_one :restaurant, through: :table
  has_many :session_items, dependent: :destroy
  has_many :items, through: :session_items

end
