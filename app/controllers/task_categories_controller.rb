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

    respond_to do |format|
      if @task_category.save
        format.html { redirect_to @task_category, notice: 'Task category was successfully created.' }
        format.json { render :show, status: :created, location: @task_category }
      else
        format.html { render :new }
        format.json { render json: @task_category.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @task_category.update(task_category_params)
        format.html { redirect_to @task_category, notice: 'Task category was successfully updated.' }
        format.json { render :show, status: :ok, location: @task_category }
      else
        format.html { render :edit }
        format.json { render json: @task_category.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @task_category.destroy
    respond_to do |format|
      format.html { redirect_to task_categories_url, notice: 'Task category was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  def set_task_category
    @task_category = TaskCategory.find(params[:id])
  end

  def task_category_params
    params.require(:task_category).permit(:name)
  end
end
