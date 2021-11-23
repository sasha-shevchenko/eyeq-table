class Table < ApplicationRecord
  belongs_to :restaurant
  has_many # no " dependent: :destroy " as we don't wanna destory history of belonging sessions
end
