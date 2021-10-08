class User < ApplicationRecord
  validates :username, presence: true, uniqueness: true 
  
  has_many :artworks,
    primary_key: :id,
    foreign_key: :artist_id,
    class_name: :Artwork

  has_many :artwork_shares,
    primary_key: :id,
    foreign_key: :viewer_id,
    class_name: :ArtworkShare
  
  has_many :comments, dependent: :destroy,
    primary_key: :id,
    foreign_key: :user_id,
    class_name: :Comment

  has_many :viewed_artworks,
    through: :artwork_shares,
    source: :artwork

  has_many :likes,
    as: :test

end