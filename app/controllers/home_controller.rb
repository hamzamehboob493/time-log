class HomeController < ApplicationController
  before_action :set_work_logs, only: :index
  def index
  end

  private

  def set_work_logs
    @work_logs = current_user.work_logs
  end
end
