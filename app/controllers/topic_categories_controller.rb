# == Schema Information
#
# Table name: topic_categories
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class TopicCategoriesController < ApplicationController
  before_action :set_topic_category, only: [:show, :edit, :update, :destroy]

  def index
    @topic_categories = TopicCategory.all
  end

  def show
  end

  def new
    @topic_category = TopicCategory.new
  end

  def edit
  end

  def create
    @topic_category = TopicCategory.new(topic_category_params)

    if @topic_category.save
      redirect_to @topic_category, notice: 'Topic category was successfully created.'
    else
      render :new
    end
  end

  def update
    if @topic_category.update(topic_category_params)
      redirect_to @topic_category, notice: 'Topic category was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @topic_category.destroy
    redirect_to topic_categories_url, notice: 'Topic category was successfully destroyed.'
  end

  private

  def set_topic_category
    @topic_category = TopicCategory.find(params[:id])
  end

  def topic_category_params
    params.require(:topic_category).permit(:name)
  end
end
