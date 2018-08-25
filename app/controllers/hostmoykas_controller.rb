class HostmoykasController < ApplicationController
  before_action :set_hostmoyka, only: [:show, :edit, :update, :destroy]

  # GET /hostmoykas
  # GET /hostmoykas.json
  def index
    @hostmoykas = Hostmoyka.all
  end

  # GET /hostmoykas/1
  # GET /hostmoykas/1.json
  def show
  end

  # GET /hostmoykas/new
  def new
    @hostmoyka = Hostmoyka.new
  end

  # GET /hostmoykas/1/edit
  def edit
  end

  # POST /hostmoykas
  # POST /hostmoykas.json
  def create
    @hostmoyka = Hostmoyka.new(hostmoyka_params)

    respond_to do |format|
      if @hostmoyka.save
        format.html { redirect_to @hostmoyka, notice: 'Hostmoyka was successfully created.' }
        format.json { render :show, status: :created, location: @hostmoyka }
      else
        format.html { render :new }
        format.json { render json: @hostmoyka.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /hostmoykas/1
  # PATCH/PUT /hostmoykas/1.json
  def update
    respond_to do |format|
      if @hostmoyka.update(hostmoyka_params)
        format.html { redirect_to @hostmoyka, notice: 'Hostmoyka was successfully updated.' }
        format.json { render :show, status: :ok, location: @hostmoyka }
      else
        format.html { render :edit }
        format.json { render json: @hostmoyka.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hostmoykas/1
  # DELETE /hostmoykas/1.json
  def destroy
    @hostmoyka.destroy
    respond_to do |format|
      format.html { redirect_to hostmoykas_url, notice: 'Hostmoyka was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_hostmoyka
      @hostmoyka = Hostmoyka.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def hostmoyka_params
      params.require(:hostmoyka).permit(:title, :description)
    end
end
