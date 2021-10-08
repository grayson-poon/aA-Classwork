class Artwork < ApplicationRecord
  validates :artist_id, uniqueness: { scope: :title }

  belongs_to :artist,
    primary_key: :id,
    foreign_key: :artist_id,
    class_name: :User

  has_many :artwork_shares,
    primary_key: :id,
    foreign_key: :artwork_id,
    class_name: :ArtworkShare

  has_many :comments, dependent: :destroy,
    primary_key: :id,
    foreign_key: :artwork_id,
    class_name: :Comment

  has_many :shared_viewers,
    through: :artwork_shares,
    source: :viewer

  has_many :likes,
    as: :test

end