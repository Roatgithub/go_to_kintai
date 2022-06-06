class Attendance < ApplicationRecord
  belongs_to :user
  validates :user_id, presence: true

  def time_diff
    end_at - start_at
  end
end
