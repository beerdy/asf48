class KapitalremontsController < ApplicationController
  before_action :set_kapitalremont, only: [:show, :edit, :update, :destroy]

  # GET /kapitalremonts
  # GET /kapitalremonts.json
  def index
    @kapitalremonts = Kapitalremont.all
  end

  # GET /kapitalremonts/1
  # GET /kapitalremonts/1.json
  def show
  end

  # GET /kapitalremonts/new
  def new
    @kapitalremont = Kapitalremont.new
  end

  # GET /kapitalremonts/1/edit
  def edit
  end

  # POST /kapitalremonts
  # POST /kapitalremonts.json
  def create
    @kapitalremont = Kapitalremont.new(kapitalremont_params)

    respond_to do |format|
      if @kapitalremont.save
        format.html { redirect_to @kapitalremont, notice: 'Kapitalremont was successfully created.' }
        format.json { render :show, status: :created, location: @kapitalremont }
      else
        format.html { render :new }
        format.json { render json: @kapitalremont.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /kapitalremonts/1
  # PATCH/PUT /kapitalremonts/1.json
  def update
    respond_to do |format|
      if @kapitalremont.update(kapitalremont_params)
        format.html { redirect_to @kapitalremont, notice: 'Kapitalremont was successfully updated.' }
        format.json { render :show, status: :ok, location: @kapitalremont }
      else
        format.html { render :edit }
        format.json { render json: @kapitalremont.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /kapitalremonts/1
  # DELETE /kapitalremonts/1.json
  def destroy
    @kapitalremont.destroy
    respond_to do |format|
      format.html { redirect_to kapitalremonts_url, notice: 'Kapitalremont was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_kapitalremont
      @kapitalremont = Kapitalremont.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def kapitalremont_params
      params.require(:kapitalremont).permit(:title, :description)
    end
end
