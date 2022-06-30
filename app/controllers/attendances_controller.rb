class AttendancesController < ApplicationController
  before_action :correct_user, only: [:show, :destroy]
  skip_before_action :login_required, only: [:new, :create]
    
  def index
    @attendances = Attendance.all
    @attendances = Attendance.order("created_at DESC").page(params[:page])
  end

  def create
    @attendance = current_user.today_attendance
    started = start?(@attendance)
    ended = end?(@attendance)
    
    if (!started && !ended) || (started && ended)
      @attendance = current_user.attendances.build(start_at: Time.zone.now)
      flash[:success] = "#{Time.zone.now.strftime("%H:%M")}に出勤しました。"
    elsif started && !ended
      @attendance.end_at = Time.zone.now
      flash[:success] = "#{Time.zone.now.strftime("%H:%M")}に退勤しました。"
    end
      
    if @attendance.save && @attendance.start_at.present? && @attendance.end_at.nil?
      redirect_to controller: :quizzes, action: :show, id: (random)
    elsif @attendance.save && @attendance.end_at.present?
      redirect_to "/quizzes/#{random}"
    else
      flash.clear
      redirect_to request.referer
      flash[:danger] = "本日はすでに打刻済みです。"
    end
  end
    
  def edit
    @attendance = Attendance.find(params[:id])
    if @attendance.user == current_user || current_user.is_admin
        render "edit"
    else
      flash[:danger] = "権限がありません。"
      redirect_to request.referer
    end
  end
  
  def update
    @attendance = Attendance.find(params[:id])
    if @attendance.update(attendance_params)
      flash[:success] = "勤怠の修正を申請しました。"
      redirect_to attendances_path
    else
      flash[:danger] = "時間を確認してください。"
      redirect_to request.referer
    end
  end

  private
    def attendance_params
      params.require(:attendance).permit(:start_at, :end_at)
    end
  
    def correct_user
      @attendance = current_user.attendances.find_by(id: params[:id])
      redirect_to root_url if @attendance.nil?
    end
end