module AttendancesHelper
  def random
    Quiz.pluck(:id).sample
  end
end
