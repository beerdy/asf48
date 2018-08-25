class EvakuatorsController < ApplicationController
  before_action :set_evakuator, only: [:show, :edit, :update, :destroy]

  # GET /evakuators
  # GET /evakuators.json
  def index
    @evakuators = Evakuator.all
  end

  # GET /evakuators/1
  # GET /evakuators/1.json
  def show
  end

  # GET /evakuators/new
  def new
    @evakuator = Evakuator.new
  end

  # GET /evakuators/1/edit
  def edit
  end

  # POST /evakuators
  # POST /evakuators.json
  def create
    @evakuator = Evakuator.new(evakuator_params)

    respond_to do |format|
      if @evakuator.save
        format.html { redirect_to @evakuator, notice: 'Evakuator was successfully created.' }
        format.json { render :show, status: :created, location: @evakuator }
      else
        format.html { render :new }
        format.json { render json: @evakuator.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /evakuators/1
  # PATCH/PUT /evakuators/1.json
  def update
    respond_to do |format|
      if @evakuator.update(evakuator_params)
        format.html { redirect_to @evakuator, notice: 'Evakuator was successfully updated.' }
        format.json { render :show, status: :ok, location: @evakuator }
      else
        format.html { render :edit }
        format.json { render json: @evakuator.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /evakuators/1
  # DELETE /evakuators/1.json
  def destroy
    @evakuator.destroy
    respond_to do |format|
      format.html { redirect_to evakuators_url, notice: 'Evakuator was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_evakuator
      @evakuator = Evakuator.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def evakuator_params
      params.require(:evakuator).permit(:title, :description)
    end
end
