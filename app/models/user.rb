class User < ApplicationRecord
    validates :company, presence: true, length: { maximum: 3 }
    validates :name, presence: true, length: { maximum: 30 }
    validates :email, presence: true, length: { maximum: 255 }, uniqueness: true, format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i }
    before_validation { email.downcase! }
    has_secure_password
    validates :password, length: { minimum: 6 }
    has_many :attendances, dependent: :destroy
    
    def today_attendance
        Attendance.where(created_at: Time.zone.today.beginning_of_day..Time.zone.today.end_of_day, user_id: id).first
    end
end
