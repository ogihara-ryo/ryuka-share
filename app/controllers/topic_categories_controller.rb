class TopicCategoriesController < ApplicationController
  before_action :set_topic_category, only: [:show, :edit, :update, :destroy]

  # GET /topic_categories
  # GET /topic_categories.json
  def index
    @topic_categories = TopicCategory.all
  end

  # GET /topic_categories/1
  # GET /topic_categories/1.json
  def show
  end

  # GET /topic_categories/new
  def new
    @topic_category = TopicCategory.new
  end

  # GET /topic_categories/1/edit
  def edit
  end

  # POST /topic_categories
  # POST /topic_categories.json
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

  # PATCH/PUT /topic_categories/1
  # PATCH/PUT /topic_categories/1.json
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

  # DELETE /topic_categories/1
  # DELETE /topic_categories/1.json
  def destroy
    @topic_category.destroy
    respond_to do |format|
      format.html { redirect_to topic_categories_url, notice: 'Topic category was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_topic_category
    @topic_category = TopicCategory.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def topic_category_params
    params.require(:topic_category).permit(:name)
  end
end
