class LuboyrodremontaController < ApplicationController
  before_action :set_luboyrodremontum, only: [:show, :edit, :update, :destroy]

  # GET /luboyrodremonta
  # GET /luboyrodremonta.json
  def index
    @luboyrodremonta = Luboyrodremontum.all
  end

  # GET /luboyrodremonta/1
  # GET /luboyrodremonta/1.json
  def show
  end

  # GET /luboyrodremonta/new
  def new
    @luboyrodremontum = Luboyrodremontum.new
  end

  # GET /luboyrodremonta/1/edit
  def edit
  end

  # POST /luboyrodremonta
  # POST /luboyrodremonta.json
  def create
    @luboyrodremontum = Luboyrodremontum.new(luboyrodremontum_params)

    respond_to do |format|
      if @luboyrodremontum.save
        format.html { redirect_to @luboyrodremontum, notice: 'Luboyrodremontum was successfully created.' }
        format.json { render :show, status: :created, location: @luboyrodremontum }
      else
        format.html { render :new }
        format.json { render json: @luboyrodremontum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /luboyrodremonta/1
  # PATCH/PUT /luboyrodremonta/1.json
  def update
    respond_to do |format|
      if @luboyrodremontum.update(luboyrodremontum_params)
        format.html { redirect_to @luboyrodremontum, notice: 'Luboyrodremontum was successfully updated.' }
        format.json { render :show, status: :ok, location: @luboyrodremontum }
      else
        format.html { render :edit }
        format.json { render json: @luboyrodremontum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /luboyrodremonta/1
  # DELETE /luboyrodremonta/1.json
  def destroy
    @luboyrodremontum.destroy
    respond_to do |format|
      format.html { redirect_to luboyrodremonta_url, notice: 'Luboyrodremontum was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_luboyrodremontum
      @luboyrodremontum = Luboyrodremontum.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def luboyrodremontum_params
      params.require(:luboyrodremontum).permit(:title, :description)
    end
end
