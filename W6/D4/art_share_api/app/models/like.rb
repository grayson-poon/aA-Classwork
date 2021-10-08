class Like < ApplicationRecord
  validates :user_id, presence: true 

  belongs_to :test,
    polymorphic: true
  
end
