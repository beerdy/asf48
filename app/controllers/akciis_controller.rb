class AkciisController < ApplicationController
  before_action :set_akcii, only: [:show, :edit, :update, :destroy]

  # GET /akciis
  # GET /akciis.json
  def index
    @akciis = Akcii.all
  end

  # GET /akciis/1
  # GET /akciis/1.json
  def show
  end

  # GET /akciis/new
  def new
    @akcii = Akcii.new
  end

  # GET /akciis/1/edit
  def edit
  end

  # POST /akciis
  # POST /akciis.json
  def create
    @akcii = Akcii.new(akcii_params)

    respond_to do |format|
      if @akcii.save
        format.html { redirect_to @akcii, notice: 'Akcii was successfully created.' }
        format.json { render :show, status: :created, location: @akcii }
      else
        format.html { render :new }
        format.json { render json: @akcii.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /akciis/1
  # PATCH/PUT /akciis/1.json
  def update
    respond_to do |format|
      if @akcii.update(akcii_params)
        format.html { redirect_to @akcii, notice: 'Akcii was successfully updated.' }
        format.json { render :show, status: :ok, location: @akcii }
      else
        format.html { render :edit }
        format.json { render json: @akcii.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /akciis/1
  # DELETE /akciis/1.json
  def destroy
    @akcii.destroy
    respond_to do |format|
      format.html { redirect_to akciis_url, notice: 'Akcii was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_akcii
      @akcii = Akcii.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def akcii_params
      params.require(:akcii).permit(:title, :description, :image_uid)
    end
end
