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

    respond_to do |format|
      if @topic_category.save
        format.html { redirect_to @topic_category, notice: 'Topic category was successfully created.' }
        format.json { render :show, status: :created, location: @topic_category }
      else
        format.html { render :new }
        format.json { render json: @topic_category.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @topic_category.update(topic_category_params)
        format.html { redirect_to @topic_category, notice: 'Topic category was successfully updated.' }
        format.json { render :show, status: :ok, location: @topic_category }
      else
        format.html { render :edit }
        format.json { render json: @topic_category.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @topic_category.destroy
    respond_to do |format|
      format.html { redirect_to topic_categories_url, notice: 'Topic category was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  def set_topic_category
    @topic_category = TopicCategory.find(params[:id])
  end

  def topic_category_params
    params.require(:topic_category).permit(:name)
  end
end
