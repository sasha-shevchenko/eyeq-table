class Restaurant < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :categories, dependent: :destroy
  has_many :items, through: :categories
  has_many :tables, dependent: :destroy
  has_many :sessions, through: :tables
  has_one_attached :logo
end
