# == Schema Information
#
# Table name: schedules
#
#  id          :integer          not null, primary key
#  author_id   :integer
#  start       :datetime
#  end         :datetime
#  title       :string
#  description :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class SchedulesController < ApplicationController
  before_action :set_schedule, only: [:show, :edit, :update, :destroy]

  def index
    @schedules = Schedule.all.includes(author: :profile)
  end

  def show
  end

  def new
    @schedule = Schedule.new
  end

  def edit
  end

  def create
    @schedule = Schedule.new(schedule_params)

    if @schedule.save
      redirect_to @schedule, notice: 'Schedule was successfully created.'
    else
      render :new
    end
  end

  def update
    if @schedule.update(schedule_params)
      redirect_to @schedule, notice: 'Schedule was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @schedule.destroy
    redirect_to schedules_url, notice: 'Schedule was successfully destroyed.'
  end

  private

  def set_schedule
    @schedule = Schedule.includes(assigns: :profile).find(params[:id])
  end

  def schedule_params
    params.require(:schedule).permit(:author_id, :start, :end, :title, :description)
  end
end
