class GemReviewsController < ApplicationController
  before_action :set_gem_review, only: [:show, :edit, :update, :destroy]

  # GET /gem_reviews
  # GET /gem_reviews.json
  def index
    @gem_reviews = GemReview.all
  end

  # GET /gem_reviews/1
  # GET /gem_reviews/1.json
  def show
  end

  # GET /gem_reviews/new
  def new
    @gem_review = GemReview.new
  end

  # GET /gem_reviews/1/edit
  def edit
  end

  # POST /gem_reviews
  # POST /gem_reviews.json
  def create
    @gem_review = GemReview.new(gem_review_params)

    respond_to do |format|
      if @gem_review.save
        format.html { redirect_to @gem_review, notice: 'Gem review was successfully created.' }
        format.json { render :show, status: :created, location: @gem_review }
      else
        format.html { render :new }
        format.json { render json: @gem_review.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /gem_reviews/1
  # PATCH/PUT /gem_reviews/1.json
  def update
    respond_to do |format|
      if @gem_review.update(gem_review_params)
        format.html { redirect_to @gem_review, notice: 'Gem review was successfully updated.' }
        format.json { render :show, status: :ok, location: @gem_review }
      else
        format.html { render :edit }
        format.json { render json: @gem_review.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /gem_reviews/1
  # DELETE /gem_reviews/1.json
  def destroy
    @gem_review.destroy
    respond_to do |format|
      format.html { redirect_to gem_reviews_url, notice: 'Gem review was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_gem_review
      @gem_review = GemReview.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def gem_review_params
      params[:gem_review].permit(:gem_github, :gem_version, :concept_score, :concept_details, :integration_score, :integration_details, :maintenance_score, :maintenance_details, :support_score, :support_details, :learning_score, :learning_details)
    end
end
