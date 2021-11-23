class Item < ApplicationRecord
  belongs_to :category
  has_many :session_items # no " dependent: :destroy " as we don't wanna destory belonging history of 'session-items' for that specific item.
end
