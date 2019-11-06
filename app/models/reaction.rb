class Reaction < ApplicationRecord
  belongs_to :user
  belongs_to :review_post

  validates :user_id, presence: true
  validates :post_id, presence: true

end