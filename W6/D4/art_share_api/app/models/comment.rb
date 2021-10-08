class Comment < ApplicationRecord
  validates :body, presence: true
  validates :user_id, presence: true
  validates :artwork_id, presence: true

  belongs_to :user,
    primary_key: :id,
    foreign_key: :user_id,
    class_name: :User

  belongs_to :artwork,
    primary_key: :id,
    foreign_key: :artwork_id,
    class_name: :Artwork

  has_many :likes,
    as: :test
end