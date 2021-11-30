class Session < ApplicationRecord
  belongs_to :table
  has_one :restaurant, through: :table
  has_many :session_items, dependent: :destroy
  has_many :items, through: :session_items


  def bill_total
    sum = 0
    session_items.includes(:item).each do |session_item|
      sum += session_item.item.price
    end

    sum.round(2)
  end

  def order_total
    sum = 0
    session_items.includes(:item).where(sent_to_kitchen: false).each do |session_item|
      sum += session_item.item.price
    end

    sum.round(2)
  end
end
