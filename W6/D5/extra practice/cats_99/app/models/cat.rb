require 'action_view'

class Cat < ApplicationRecord

  COLORS = ["blue", "black", "grey", "orange", "white", "red"]

  include ActionView::Helpers::DateHelper

  validates :birth_date, :color, :name, :sex, presence: true
  validates :sex, inclusion: { in: ["M", "F"] }
  validates :color, inclusion: { in: COLORS }

  def age
    distance_of_time_in_words_to_now(self.birth_date)
  end

end
