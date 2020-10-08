class CoverageController < ApplicationController
  before_action :set_coverage, only: [:show, :edit, :update, :destroy]

  # GET /coverage
  # GET /coverage.json
  def index
    @coverage = Coverage.all
  end

  # GET /coverage/1
  # GET /coverage/1.json
  def show
  end

  # GET /coverage/new
  def new
    @coverage = Coverage.new
  end

  # GET /coverage/1/edit
  def edit
  end

  # POST /coverage
  # POST /coverage.json
  def create
    @coverage = Coverage.new(coverage_params)

    respond_to do |format|
      if @coverage.save
        format.html { redirect_to @coverage, notice: 'Coverage was successfully created.' }
        format.json { render :show, status: :created, location: @coverage }
      else
        format.html { render :new }
        format.json { render json: @coverage.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /coverage/1
  # PATCH/PUT /coverage/1.json
  def update
    respond_to do |format|
      if @coverage.update(coverage_params)
        format.html { redirect_to @coverage, notice: 'Coverage was successfully updated.' }
        format.json { render :show, status: :ok, location: @coverage }
      else
        format.html { render :edit }
        format.json { render json: @coverage.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /coverage/1
  # DELETE /coverage/1.json
  def destroy
    @coverage.destroy
    respond_to do |format|
      format.html { redirect_to coverage_index_url, notice: 'Coverage was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_coverage
      @coverage = Coverage.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def coverage_params
      params.fetch(:coverage, {})
    end
end
