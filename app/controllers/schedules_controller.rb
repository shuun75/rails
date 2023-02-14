class SchedulesController < ApplicationController
  def index
    @schedules = Schedule.all
  end

  def show
    @schedule = Schedule.find(params[:id])
  end

  def new
    @schedule = Schedule.new
  end

  def create
    @schedule = Schedule.new(schedule_params)
    if @schedule.save
      flash[:notice] = "スケジュールを追加できました"
      redirect_to root_path
    else
      flash[:error] = "保存できませんでした"
      render :new
    end
  end

  private
  def schedule_params
    params.require(:schedule).permit(:title, :start_date, :end_date, :is_all_day, :content)
  end
end