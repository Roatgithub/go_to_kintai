class Attendance < ApplicationRecord
  belongs_to :user
  validate :date_chk, on: :create
  validate :start_end_check, on: :update

  def time_diff
    (end_at - start_at) / 3600
  end

  def start_end_check
    errors.add(:end_at) if self.start_at >= self.end_at
  end
  
  private
  def date_chk
    errors.add(:user_id) if Attendance.where("user_id = ? AND DATE(created_at) = DATE(?)", self.user_id, Date.today).all.any?
  end
end