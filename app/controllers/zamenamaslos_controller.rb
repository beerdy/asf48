class ZamenamaslosController < ApplicationController
  before_action :set_zamenamaslo, only: [:show, :edit, :update, :destroy]

  # GET /zamenamaslos
  # GET /zamenamaslos.json
  def index
    @zamenamaslos = Zamenamaslo.all
  end

  # GET /zamenamaslos/1
  # GET /zamenamaslos/1.json
  def show
  end

  # GET /zamenamaslos/new
  def new
    @zamenamaslo = Zamenamaslo.new
  end

  # GET /zamenamaslos/1/edit
  def edit
  end

  # POST /zamenamaslos
  # POST /zamenamaslos.json
  def create
    @zamenamaslo = Zamenamaslo.new(zamenamaslo_params)

    respond_to do |format|
      if @zamenamaslo.save
        format.html { redirect_to @zamenamaslo, notice: 'Zamenamaslo was successfully created.' }
        format.json { render :show, status: :created, location: @zamenamaslo }
      else
        format.html { render :new }
        format.json { render json: @zamenamaslo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /zamenamaslos/1
  # PATCH/PUT /zamenamaslos/1.json
  def update
    respond_to do |format|
      if @zamenamaslo.update(zamenamaslo_params)
        format.html { redirect_to @zamenamaslo, notice: 'Zamenamaslo was successfully updated.' }
        format.json { render :show, status: :ok, location: @zamenamaslo }
      else
        format.html { render :edit }
        format.json { render json: @zamenamaslo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /zamenamaslos/1
  # DELETE /zamenamaslos/1.json
  def destroy
    @zamenamaslo.destroy
    respond_to do |format|
      format.html { redirect_to zamenamaslos_url, notice: 'Zamenamaslo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_zamenamaslo
      @zamenamaslo = Zamenamaslo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def zamenamaslo_params
      params.require(:zamenamaslo).permit(:title, :description)
    end
end
