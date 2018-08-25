class HostlishneesController < ApplicationController
  before_action :set_hostlishnee, only: [:show, :edit, :update, :destroy]

  # GET /hostlishnees
  # GET /hostlishnees.json
  def index
    @hostlishnees = Hostlishnee.all
  end

  # GET /hostlishnees/1
  # GET /hostlishnees/1.json
  def show
  end

  # GET /hostlishnees/new
  def new
    @hostlishnee = Hostlishnee.new
  end

  # GET /hostlishnees/1/edit
  def edit
  end

  # POST /hostlishnees
  # POST /hostlishnees.json
  def create
    @hostlishnee = Hostlishnee.new(hostlishnee_params)

    respond_to do |format|
      if @hostlishnee.save
        format.html { redirect_to @hostlishnee, notice: 'Hostlishnee was successfully created.' }
        format.json { render :show, status: :created, location: @hostlishnee }
      else
        format.html { render :new }
        format.json { render json: @hostlishnee.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /hostlishnees/1
  # PATCH/PUT /hostlishnees/1.json
  def update
    respond_to do |format|
      if @hostlishnee.update(hostlishnee_params)
        format.html { redirect_to @hostlishnee, notice: 'Hostlishnee was successfully updated.' }
        format.json { render :show, status: :ok, location: @hostlishnee }
      else
        format.html { render :edit }
        format.json { render json: @hostlishnee.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hostlishnees/1
  # DELETE /hostlishnees/1.json
  def destroy
    @hostlishnee.destroy
    respond_to do |format|
      format.html { redirect_to hostlishnees_url, notice: 'Hostlishnee was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_hostlishnee
      @hostlishnee = Hostlishnee.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def hostlishnee_params
      params.require(:hostlishnee).permit(:title, :description)
    end
end
