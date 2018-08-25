class ShinniyservicesController < ApplicationController
  before_action :set_shinniyservice, only: [:show, :edit, :update, :destroy]

  # GET /shinniyservices
  # GET /shinniyservices.json
  def index
    @shinniyservices = Shinniyservice.all
  end

  # GET /shinniyservices/1
  # GET /shinniyservices/1.json
  def show
  end

  # GET /shinniyservices/new
  def new
    @shinniyservice = Shinniyservice.new
  end

  # GET /shinniyservices/1/edit
  def edit
  end

  # POST /shinniyservices
  # POST /shinniyservices.json
  def create
    @shinniyservice = Shinniyservice.new(shinniyservice_params)

    respond_to do |format|
      if @shinniyservice.save
        format.html { redirect_to @shinniyservice, notice: 'Shinniyservice was successfully created.' }
        format.json { render :show, status: :created, location: @shinniyservice }
      else
        format.html { render :new }
        format.json { render json: @shinniyservice.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /shinniyservices/1
  # PATCH/PUT /shinniyservices/1.json
  def update
    respond_to do |format|
      if @shinniyservice.update(shinniyservice_params)
        format.html { redirect_to @shinniyservice, notice: 'Shinniyservice was successfully updated.' }
        format.json { render :show, status: :ok, location: @shinniyservice }
      else
        format.html { render :edit }
        format.json { render json: @shinniyservice.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /shinniyservices/1
  # DELETE /shinniyservices/1.json
  def destroy
    @shinniyservice.destroy
    respond_to do |format|
      format.html { redirect_to shinniyservices_url, notice: 'Shinniyservice was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_shinniyservice
      @shinniyservice = Shinniyservice.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def shinniyservice_params
      params.require(:shinniyservice).permit(:title, :description)
    end
end
