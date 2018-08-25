class CertpodveskasController < ApplicationController
  before_action :set_certpodveska, only: [:show, :edit, :update, :destroy]

  # GET /certpodveskas
  # GET /certpodveskas.json
  def index
    @certpodveskas = Certpodveska.all
  end

  # GET /certpodveskas/1
  # GET /certpodveskas/1.json
  def show
  end

  # GET /certpodveskas/new
  def new
    @certpodveska = Certpodveska.new
  end

  # GET /certpodveskas/1/edit
  def edit
  end

  # POST /certpodveskas
  # POST /certpodveskas.json
  def create
    @certpodveska = Certpodveska.new(certpodveska_params)

    respond_to do |format|
      if @certpodveska.save
        format.html { redirect_to @certpodveska, notice: 'Certpodveska was successfully created.' }
        format.json { render :show, status: :created, location: @certpodveska }
      else
        format.html { render :new }
        format.json { render json: @certpodveska.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /certpodveskas/1
  # PATCH/PUT /certpodveskas/1.json
  def update
    respond_to do |format|
      if @certpodveska.update(certpodveska_params)
        format.html { redirect_to @certpodveska, notice: 'Certpodveska was successfully updated.' }
        format.json { render :show, status: :ok, location: @certpodveska }
      else
        format.html { render :edit }
        format.json { render json: @certpodveska.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /certpodveskas/1
  # DELETE /certpodveskas/1.json
  def destroy
    @certpodveska.destroy
    respond_to do |format|
      format.html { redirect_to certpodveskas_url, notice: 'Certpodveska was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_certpodveska
      @certpodveska = Certpodveska.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def certpodveska_params
      params.require(:certpodveska).permit(:title, :description)
    end
end
