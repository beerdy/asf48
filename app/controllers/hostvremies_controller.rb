class HostvremiesController < ApplicationController
  before_action :set_hostvremy, only: [:show, :edit, :update, :destroy]

  # GET /hostvremies
  # GET /hostvremies.json
  def index
    @hostvremies = Hostvremy.all
  end

  # GET /hostvremies/1
  # GET /hostvremies/1.json
  def show
  end

  # GET /hostvremies/new
  def new
    @hostvremy = Hostvremy.new
  end

  # GET /hostvremies/1/edit
  def edit
  end

  # POST /hostvremies
  # POST /hostvremies.json
  def create
    @hostvremy = Hostvremy.new(hostvremy_params)

    respond_to do |format|
      if @hostvremy.save
        format.html { redirect_to @hostvremy, notice: 'Hostvremy was successfully created.' }
        format.json { render :show, status: :created, location: @hostvremy }
      else
        format.html { render :new }
        format.json { render json: @hostvremy.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /hostvremies/1
  # PATCH/PUT /hostvremies/1.json
  def update
    respond_to do |format|
      if @hostvremy.update(hostvremy_params)
        format.html { redirect_to @hostvremy, notice: 'Hostvremy was successfully updated.' }
        format.json { render :show, status: :ok, location: @hostvremy }
      else
        format.html { render :edit }
        format.json { render json: @hostvremy.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hostvremies/1
  # DELETE /hostvremies/1.json
  def destroy
    @hostvremy.destroy
    respond_to do |format|
      format.html { redirect_to hostvremies_url, notice: 'Hostvremy was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_hostvremy
      @hostvremy = Hostvremy.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def hostvremy_params
      params.require(:hostvremy).permit(:title, :description)
    end
end
