class HostgarantiesController < ApplicationController
  before_action :set_hostgaranty, only: [:show, :edit, :update, :destroy]

  # GET /hostgaranties
  # GET /hostgaranties.json
  def index
    @hostgaranties = Hostgarantie.all
  end

  # GET /hostgaranties/1
  # GET /hostgaranties/1.json
  def show
  end

  # GET /hostgaranties/new
  def new
    @hostgaranty = Hostgarantie.new
  end

  # GET /hostgaranties/1/edit
  def edit
  end

  # POST /hostgaranties
  # POST /hostgaranties.json
  def create
    @hostgaranty = Hostgarantie.new(hostgaranty_params)

    respond_to do |format|
      if @hostgaranty.save
        format.html { redirect_to @hostgaranty, notice: 'Hostgarantie was successfully created.' }
        format.json { render :show, status: :created, location: @hostgaranty }
      else
        format.html { render :new }
        format.json { render json: @hostgaranty.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /hostgaranties/1
  # PATCH/PUT /hostgaranties/1.json
  def update
    respond_to do |format|
      if @hostgaranty.update(hostgaranty_params)
        format.html { redirect_to @hostgaranty, notice: 'Hostgarantie was successfully updated.' }
        format.json { render :show, status: :ok, location: @hostgaranty }
      else
        format.html { render :edit }
        format.json { render json: @hostgaranty.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hostgaranties/1
  # DELETE /hostgaranties/1.json
  def destroy
    @hostgaranty.destroy
    respond_to do |format|
      format.html { redirect_to hostgaranties_url, notice: 'Hostgarantie was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_hostgaranty
      @hostgaranty = Hostgarantie.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def hostgaranty_params
      params.require(:hostgaranty).permit(:title, :description)
    end
end
