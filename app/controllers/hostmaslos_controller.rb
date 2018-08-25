class HostmaslosController < ApplicationController
  before_action :set_hostmaslo, only: [:show, :edit, :update, :destroy]

  # GET /hostmaslos
  # GET /hostmaslos.json
  def index
    @hostmaslos = Hostmaslo.all
  end

  # GET /hostmaslos/1
  # GET /hostmaslos/1.json
  def show
  end

  # GET /hostmaslos/new
  def new
    @hostmaslo = Hostmaslo.new
  end

  # GET /hostmaslos/1/edit
  def edit
  end

  # POST /hostmaslos
  # POST /hostmaslos.json
  def create
    @hostmaslo = Hostmaslo.new(hostmaslo_params)

    respond_to do |format|
      if @hostmaslo.save
        format.html { redirect_to @hostmaslo, notice: 'Hostmaslo was successfully created.' }
        format.json { render :show, status: :created, location: @hostmaslo }
      else
        format.html { render :new }
        format.json { render json: @hostmaslo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /hostmaslos/1
  # PATCH/PUT /hostmaslos/1.json
  def update
    respond_to do |format|
      if @hostmaslo.update(hostmaslo_params)
        format.html { redirect_to @hostmaslo, notice: 'Hostmaslo was successfully updated.' }
        format.json { render :show, status: :ok, location: @hostmaslo }
      else
        format.html { render :edit }
        format.json { render json: @hostmaslo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hostmaslos/1
  # DELETE /hostmaslos/1.json
  def destroy
    @hostmaslo.destroy
    respond_to do |format|
      format.html { redirect_to hostmaslos_url, notice: 'Hostmaslo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_hostmaslo
      @hostmaslo = Hostmaslo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def hostmaslo_params
      params.require(:hostmaslo).permit(:title, :description)
    end
end
