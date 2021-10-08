class UpdateNull < ActiveRecord::Migration[5.2]
  def change
    change_column_null :likes, :artwork_id, true
    change_column_null :likes, :comment_id, true

  end
end
