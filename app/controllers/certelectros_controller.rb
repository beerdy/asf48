class CertelectrosController < ApplicationController
  before_action :set_certelectro, only: [:show, :edit, :update, :destroy]

  # GET /certelectros
  # GET /certelectros.json
  def index
    @certelectros = Certelectro.all
  end

  # GET /certelectros/1
  # GET /certelectros/1.json
  def show
  end

  # GET /certelectros/new
  def new
    @certelectro = Certelectro.new
  end

  # GET /certelectros/1/edit
  def edit
  end

  # POST /certelectros
  # POST /certelectros.json
  def create
    @certelectro = Certelectro.new(certelectro_params)

    respond_to do |format|
      if @certelectro.save
        format.html { redirect_to @certelectro, notice: 'Certelectro was successfully created.' }
        format.json { render :show, status: :created, location: @certelectro }
      else
        format.html { render :new }
        format.json { render json: @certelectro.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /certelectros/1
  # PATCH/PUT /certelectros/1.json
  def update
    respond_to do |format|
      if @certelectro.update(certelectro_params)
        format.html { redirect_to @certelectro, notice: 'Certelectro was successfully updated.' }
        format.json { render :show, status: :ok, location: @certelectro }
      else
        format.html { render :edit }
        format.json { render json: @certelectro.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /certelectros/1
  # DELETE /certelectros/1.json
  def destroy
    @certelectro.destroy
    respond_to do |format|
      format.html { redirect_to certelectros_url, notice: 'Certelectro was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_certelectro
      @certelectro = Certelectro.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def certelectro_params
      params.require(:certelectro).permit(:title, :description)
    end
end
