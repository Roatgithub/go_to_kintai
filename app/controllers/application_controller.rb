class ApplicationController < ActionController::Base
  include SessionsHelper
  include AttendancesHelper
  include UsersHelper
  before_action :login_required

  rescue_from ActiveRecord::RecordNotFound, with: :render_404
  rescue_from ActionController::RoutingError, with: :render_404
  rescue_from Exception, with: :render_500
  
  def render_404
    render template: 'errors/error_404', status: 404, layout: 'application', content_type: 'text/html'
  end
  
  def render_500
    render template: 'errors/error_500', status: 500, layout: 'application', content_type: 'text/html'
  end
  
  private
    def login_required
      redirect_to new_session_path unless current_user
    end
  
    def start?(attendance)
      return false if attendance.nil?
      !attendance.start_at.nil?
    end

    def end?(attendance)
      return false if attendance.nil?
      !attendance.end_at.nil?
    end
end