class Session < ApplicationRecord
  belongs_to :table
  has_many :session_items, dependent: :destroy
end
