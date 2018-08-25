class DozopravkasController < ApplicationController
  before_action :set_dozopravka, only: [:show, :edit, :update, :destroy]

  # GET /dozopravkas
  # GET /dozopravkas.json
  def index
    @dozopravkas = Dozopravka.all
  end

  # GET /dozopravkas/1
  # GET /dozopravkas/1.json
  def show
  end

  # GET /dozopravkas/new
  def new
    @dozopravka = Dozopravka.new
  end

  # GET /dozopravkas/1/edit
  def edit
  end

  # POST /dozopravkas
  # POST /dozopravkas.json
  def create
    @dozopravka = Dozopravka.new(dozopravka_params)

    respond_to do |format|
      if @dozopravka.save
        format.html { redirect_to @dozopravka, notice: 'Dozopravka was successfully created.' }
        format.json { render :show, status: :created, location: @dozopravka }
      else
        format.html { render :new }
        format.json { render json: @dozopravka.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dozopravkas/1
  # PATCH/PUT /dozopravkas/1.json
  def update
    respond_to do |format|
      if @dozopravka.update(dozopravka_params)
        format.html { redirect_to @dozopravka, notice: 'Dozopravka was successfully updated.' }
        format.json { render :show, status: :ok, location: @dozopravka }
      else
        format.html { render :edit }
        format.json { render json: @dozopravka.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dozopravkas/1
  # DELETE /dozopravkas/1.json
  def destroy
    @dozopravka.destroy
    respond_to do |format|
      format.html { redirect_to dozopravkas_url, notice: 'Dozopravka was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dozopravka
      @dozopravka = Dozopravka.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def dozopravka_params
      params.require(:dozopravka).permit(:title, :description)
    end
end
