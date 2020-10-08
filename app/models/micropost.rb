class Micropost < ApplicationRecord
  belongs_to :user
  has_many :favorites
  has_many :favorite_users, through: :favorites, source: :user
  has_many :reverses_of_favorite, class_name: 'Favorite', foreign_key: 'user_id'
  validates :content, presence: true, length: { maximum: 255 }
end