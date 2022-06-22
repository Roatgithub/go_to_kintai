class Attendance < ApplicationRecord
  belongs_to :user
  validates :created_at, uniqueness: {scope: :user_id}
  validate :start_end_check, on: :update

  def start_end_check
    errors.add(:end_at, "") if self.start_at >= self.end_at
  end

  def time_diff
    end_at - start_at
  end
end