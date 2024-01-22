class WorkLogController < ApplicationController
  before_action :set_work_log_date
  def new
    @work_log = WorkLog.new
    render 'new'
  end

  def create
    @work_log = WorkLog.create(work_log_params)
    if @work_log.save!
      redirect_to root_path
      flash[:message] = "Worklog created successfully"
    else
      render 'new'
    end
  end

  private

  def work_log_params
    params.require(:work_log).permit(:start_time, :end_time, :lecture_id).merge({user_id: current_user.id})
  end

  def set_work_log_date
    @work_log_date = params[:date]
  end
end
