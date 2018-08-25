class HostmapsController < ApplicationController
  before_action :set_hostmap, only: [:show, :edit, :update, :destroy]

  # GET /hostmaps
  # GET /hostmaps.json
  def index
    @hostmaps = Hostmap.all
  end

  # GET /hostmaps/1
  # GET /hostmaps/1.json
  def show
  end

  # GET /hostmaps/new
  def new
    @hostmap = Hostmap.new
  end

  # GET /hostmaps/1/edit
  def edit
  end

  # POST /hostmaps
  # POST /hostmaps.json
  def create
    @hostmap = Hostmap.new(hostmap_params)

    respond_to do |format|
      if @hostmap.save
        format.html { redirect_to @hostmap, notice: 'Hostmap was successfully created.' }
        format.json { render :show, status: :created, location: @hostmap }
      else
        format.html { render :new }
        format.json { render json: @hostmap.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /hostmaps/1
  # PATCH/PUT /hostmaps/1.json
  def update
    respond_to do |format|
      if @hostmap.update(hostmap_params)
        format.html { redirect_to @hostmap, notice: 'Hostmap was successfully updated.' }
        format.json { render :show, status: :ok, location: @hostmap }
      else
        format.html { render :edit }
        format.json { render json: @hostmap.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hostmaps/1
  # DELETE /hostmaps/1.json
  def destroy
    @hostmap.destroy
    respond_to do |format|
      format.html { redirect_to hostmaps_url, notice: 'Hostmap was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_hostmap
      @hostmap = Hostmap.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def hostmap_params
      params.require(:hostmap).permit(:title, :description)
    end
end
