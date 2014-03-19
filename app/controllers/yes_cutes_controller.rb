class YesCutesController < ApplicationController
  before_action :set_yes_cute, only: [:show, :edit, :update, :destroy]

  # GET /yes_cutes
  # GET /yes_cutes.json
  def index
    @yes_cutes = YesCute.all
  end

  # GET /yes_cutes/1
  # GET /yes_cutes/1.json
  def show
  end

  # GET /yes_cutes/new
  def new
    @yes_cute = YesCute.new
  end

  # GET /yes_cutes/1/edit
  def edit
  end

  # POST /yes_cutes
  # POST /yes_cutes.json
  def create
    @yes_cute = YesCute.new(yes_cute_params)

    respond_to do |format|
      if @yes_cute.save
        format.html { redirect_to @yes_cute, notice: 'Yes cute was successfully created.' }
        format.json { render action: 'show', status: :created, location: @yes_cute }
      else
        format.html { render action: 'new' }
        format.json { render json: @yes_cute.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /yes_cutes/1
  # PATCH/PUT /yes_cutes/1.json
  def update
    respond_to do |format|
      if @yes_cute.update(yes_cute_params)
        format.html { redirect_to @yes_cute, notice: 'Yes cute was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @yes_cute.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /yes_cutes/1
  # DELETE /yes_cutes/1.json
  def destroy
    @yes_cute.destroy
    respond_to do |format|
      format.html { redirect_to yes_cutes_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_yes_cute
      @yes_cute = YesCute.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def yes_cute_params
      params.require(:yes_cute).permit(:Animal, :image_url, :cuteness_level)
    end
end
