class KachestvomoykasController < ApplicationController
  before_action :set_kachestvomoyka, only: [:show, :edit, :update, :destroy]

  # GET /kachestvomoykas
  # GET /kachestvomoykas.json
  def index
    @kachestvomoykas = Kachestvomoyka.all
  end

  # GET /kachestvomoykas/1
  # GET /kachestvomoykas/1.json
  def show
  end

  # GET /kachestvomoykas/new
  def new
    @kachestvomoyka = Kachestvomoyka.new
  end

  # GET /kachestvomoykas/1/edit
  def edit
  end

  # POST /kachestvomoykas
  # POST /kachestvomoykas.json
  def create
    @kachestvomoyka = Kachestvomoyka.new(kachestvomoyka_params)

    respond_to do |format|
      if @kachestvomoyka.save
        format.html { redirect_to @kachestvomoyka, notice: 'Kachestvomoyka was successfully created.' }
        format.json { render :show, status: :created, location: @kachestvomoyka }
      else
        format.html { render :new }
        format.json { render json: @kachestvomoyka.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /kachestvomoykas/1
  # PATCH/PUT /kachestvomoykas/1.json
  def update
    respond_to do |format|
      if @kachestvomoyka.update(kachestvomoyka_params)
        format.html { redirect_to @kachestvomoyka, notice: 'Kachestvomoyka was successfully updated.' }
        format.json { render :show, status: :ok, location: @kachestvomoyka }
      else
        format.html { render :edit }
        format.json { render json: @kachestvomoyka.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /kachestvomoykas/1
  # DELETE /kachestvomoykas/1.json
  def destroy
    @kachestvomoyka.destroy
    respond_to do |format|
      format.html { redirect_to kachestvomoykas_url, notice: 'Kachestvomoyka was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_kachestvomoyka
      @kachestvomoyka = Kachestvomoyka.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def kachestvomoyka_params
      params.require(:kachestvomoyka).permit(:title, :description)
    end
end
