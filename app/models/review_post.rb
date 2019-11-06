class ReviewPost < ApplicationRecord
  has_many :reactions, dependent: :destroy
  has_many :comments, dependent: :destroy
  belongs_to :user
  belongs_to :place

  validates :user_id, presence: true
  validates :places_id, presence: true
  validates :title, presence: true
  validates :content, presence: true
end
