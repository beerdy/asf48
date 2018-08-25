class ObsluzhivaniesController < ApplicationController
  before_action :set_obsluzhivany, only: [:show, :edit, :update, :destroy]

  # GET /obsluzhivanies
  # GET /obsluzhivanies.json
  def index
    @obsluzhivanies = Obsluzhivanie.all
  end

  # GET /obsluzhivanies/1
  # GET /obsluzhivanies/1.json
  def show
  end

  # GET /obsluzhivanies/new
  def new
    @obsluzhivany = Obsluzhivanie.new
  end

  # GET /obsluzhivanies/1/edit
  def edit
  end

  # POST /obsluzhivanies
  # POST /obsluzhivanies.json
  def create
    @obsluzhivany = Obsluzhivanie.new(obsluzhivany_params)

    respond_to do |format|
      if @obsluzhivany.save
        format.html { redirect_to @obsluzhivany, notice: 'Obsluzhivanie was successfully created.' }
        format.json { render :show, status: :created, location: @obsluzhivany }
      else
        format.html { render :new }
        format.json { render json: @obsluzhivany.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /obsluzhivanies/1
  # PATCH/PUT /obsluzhivanies/1.json
  def update
    respond_to do |format|
      if @obsluzhivany.update(obsluzhivany_params)
        format.html { redirect_to @obsluzhivany, notice: 'Obsluzhivanie was successfully updated.' }
        format.json { render :show, status: :ok, location: @obsluzhivany }
      else
        format.html { render :edit }
        format.json { render json: @obsluzhivany.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /obsluzhivanies/1
  # DELETE /obsluzhivanies/1.json
  def destroy
    @obsluzhivany.destroy
    respond_to do |format|
      format.html { redirect_to obsluzhivanies_url, notice: 'Obsluzhivanie was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_obsluzhivany
      @obsluzhivany = Obsluzhivanie.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def obsluzhivany_params
      params.require(:obsluzhivanie).permit(:title, :description)
    end
end
