class CertkapitalsController < ApplicationController
  before_action :set_certkapital, only: [:show, :edit, :update, :destroy]

  # GET /certkapitals
  # GET /certkapitals.json
  def index
    @certkapitals = Certkapital.all
  end

  # GET /certkapitals/1
  # GET /certkapitals/1.json
  def show
  end

  # GET /certkapitals/new
  def new
    @certkapital = Certkapital.new
  end

  # GET /certkapitals/1/edit
  def edit
  end

  # POST /certkapitals
  # POST /certkapitals.json
  def create
    @certkapital = Certkapital.new(certkapital_params)

    respond_to do |format|
      if @certkapital.save
        format.html { redirect_to @certkapital, notice: 'Certkapital was successfully created.' }
        format.json { render :show, status: :created, location: @certkapital }
      else
        format.html { render :new }
        format.json { render json: @certkapital.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /certkapitals/1
  # PATCH/PUT /certkapitals/1.json
  def update
    respond_to do |format|
      if @certkapital.update(certkapital_params)
        format.html { redirect_to @certkapital, notice: 'Certkapital was successfully updated.' }
        format.json { render :show, status: :ok, location: @certkapital }
      else
        format.html { render :edit }
        format.json { render json: @certkapital.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /certkapitals/1
  # DELETE /certkapitals/1.json
  def destroy
    @certkapital.destroy
    respond_to do |format|
      format.html { redirect_to certkapitals_url, notice: 'Certkapital was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_certkapital
      @certkapital = Certkapital.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def certkapital_params
      params.require(:certkapital).permit(:title, :description)
    end
end
