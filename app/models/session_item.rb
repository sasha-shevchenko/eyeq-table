class SessionItem < ApplicationRecord
  belongs_to :session
  belongs_to :item
end
