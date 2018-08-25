class HostpodzamenusController < ApplicationController
  before_action :set_hostpodzamenu, only: [:show, :edit, :update, :destroy]

  # GET /hostpodzamenus
  # GET /hostpodzamenus.json
  def index
    @hostpodzamenus = Hostpodzamenu.all
  end

  # GET /hostpodzamenus/1
  # GET /hostpodzamenus/1.json
  def show
  end

  # GET /hostpodzamenus/new
  def new
    @hostpodzamenu = Hostpodzamenu.new
  end

  # GET /hostpodzamenus/1/edit
  def edit
  end

  # POST /hostpodzamenus
  # POST /hostpodzamenus.json
  def create
    @hostpodzamenu = Hostpodzamenu.new(hostpodzamenu_params)

    respond_to do |format|
      if @hostpodzamenu.save
        format.html { redirect_to @hostpodzamenu, notice: 'Hostpodzamenu was successfully created.' }
        format.json { render :show, status: :created, location: @hostpodzamenu }
      else
        format.html { render :new }
        format.json { render json: @hostpodzamenu.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /hostpodzamenus/1
  # PATCH/PUT /hostpodzamenus/1.json
  def update
    respond_to do |format|
      if @hostpodzamenu.update(hostpodzamenu_params)
        format.html { redirect_to @hostpodzamenu, notice: 'Hostpodzamenu was successfully updated.' }
        format.json { render :show, status: :ok, location: @hostpodzamenu }
      else
        format.html { render :edit }
        format.json { render json: @hostpodzamenu.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hostpodzamenus/1
  # DELETE /hostpodzamenus/1.json
  def destroy
    @hostpodzamenu.destroy
    respond_to do |format|
      format.html { redirect_to hostpodzamenus_url, notice: 'Hostpodzamenu was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_hostpodzamenu
      @hostpodzamenu = Hostpodzamenu.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def hostpodzamenu_params
      params.require(:hostpodzamenu).permit(:title, :description)
    end
end
