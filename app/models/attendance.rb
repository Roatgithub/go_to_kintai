class Attendance < ApplicationRecord
  belongs_to :user
  validates :user_id, presence: true
  validate :start_end_check, on: :update
  validate :start_end_date_check, on: :update

  def start_end_check
    errors.add(:end_at, "") if self.end_at <= self.start_at
  end

  def start_end_date_check
    errors.add(:end_at, "") unless end_at.strftime("%d") == start_at.strftime("%d")
  end

  def time_diff
    end_at - start_at
  end
end
