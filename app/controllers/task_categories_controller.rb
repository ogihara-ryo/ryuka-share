# == Schema Information
#
# Table name: task_categories
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class TaskCategoriesController < ApplicationController
  before_action :set_task_category, only: [:show, :edit, :update, :destroy]

  def index
    @task_categories = TaskCategory.all
  end

  def show
  end

  def new
    @task_category = TaskCategory.new
  end

  def edit
  end

  def create
    @task_category = TaskCategory.new(task_category_params)

    if @task_category.save
      redirect_to @task_category, notice: 'Task category was successfully created.'
    else
      render :new
    end
  end

  def update
    if @task_category.update(task_category_params)
      redirect_to @task_category, notice: 'Task category was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @task_category.destroy
    redirect_to task_categories_url, notice: 'Task category was successfully destroyed.'
  end

  private

  def set_task_category
    @task_category = TaskCategory.find(params[:id])
  end

  def task_category_params
    params.require(:task_category).permit(:name)
  end
end
