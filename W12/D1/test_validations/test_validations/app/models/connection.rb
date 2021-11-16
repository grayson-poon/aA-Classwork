class Connection < ApplicationRecord
  validates :owner_id, :connection_id, presence: true
  validates :owner_id, uniqueness: { scope: :connection_id }
  validates :accepted_request, inclusion: { in: [ true, false ] }

end
