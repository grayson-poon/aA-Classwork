require 'action_view'

class Cat < ApplicationRecord
  include ActionView::Helpers::DateHelper

  COLORS = ["black", "white", "calico", "brown", "gray", "orange"]

  validates :birth_date, :color, :name, :sex, :description, presence: true
  validates :color, inclusion: COLORS

  def age
    # debugger
    distance_of_time_in_words_to_now(self.birth_date)
  end

end
