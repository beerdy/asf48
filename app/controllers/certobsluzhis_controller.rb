class CertobsluzhisController < ApplicationController
  before_action :set_certobsluzhi, only: [:show, :edit, :update, :destroy]

  # GET /certobsluzhis
  # GET /certobsluzhis.json
  def index
    @certobsluzhis = Certobsluzhi.all
  end

  # GET /certobsluzhis/1
  # GET /certobsluzhis/1.json
  def show
  end

  # GET /certobsluzhis/new
  def new
    @certobsluzhi = Certobsluzhi.new
  end

  # GET /certobsluzhis/1/edit
  def edit
  end

  # POST /certobsluzhis
  # POST /certobsluzhis.json
  def create
    @certobsluzhi = Certobsluzhi.new(certobsluzhi_params)

    respond_to do |format|
      if @certobsluzhi.save
        format.html { redirect_to @certobsluzhi, notice: 'Certobsluzhi was successfully created.' }
        format.json { render :show, status: :created, location: @certobsluzhi }
      else
        format.html { render :new }
        format.json { render json: @certobsluzhi.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /certobsluzhis/1
  # PATCH/PUT /certobsluzhis/1.json
  def update
    respond_to do |format|
      if @certobsluzhi.update(certobsluzhi_params)
        format.html { redirect_to @certobsluzhi, notice: 'Certobsluzhi was successfully updated.' }
        format.json { render :show, status: :ok, location: @certobsluzhi }
      else
        format.html { render :edit }
        format.json { render json: @certobsluzhi.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /certobsluzhis/1
  # DELETE /certobsluzhis/1.json
  def destroy
    @certobsluzhi.destroy
    respond_to do |format|
      format.html { redirect_to certobsluzhis_url, notice: 'Certobsluzhi was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_certobsluzhi
      @certobsluzhi = Certobsluzhi.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def certobsluzhi_params
      params.require(:certobsluzhi).permit(:title, :description)
    end
end
