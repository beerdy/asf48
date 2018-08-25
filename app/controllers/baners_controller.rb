class BanersController < ApplicationController
  before_action :set_baner, only: [:show, :edit, :update, :destroy]

  # GET /baners
  # GET /baners.json
  def index
    @baners = Baner.all
  end

  # GET /baners/1
  # GET /baners/1.json
  def show
  end

  # GET /baners/new
  def new
    @baner = Baner.new
  end

  # GET /baners/1/edit
  def edit
  end

  # POST /baners
  # POST /baners.json
  def create
    @baner = Baner.new(baner_params)

    respond_to do |format|
      if @baner.save
        format.html { redirect_to @baner, notice: 'Baner was successfully created.' }
        format.json { render :show, status: :created, location: @baner }
      else
        format.html { render :new }
        format.json { render json: @baner.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /baners/1
  # PATCH/PUT /baners/1.json
  def update
    respond_to do |format|
      if @baner.update(baner_params)
        format.html { redirect_to @baner, notice: 'Baner was successfully updated.' }
        format.json { render :show, status: :ok, location: @baner }
      else
        format.html { render :edit }
        format.json { render json: @baner.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /baners/1
  # DELETE /baners/1.json
  def destroy
    @baner.destroy
    respond_to do |format|
      format.html { redirect_to baners_url, notice: 'Baner was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_baner
      @baner = Baner.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def baner_params
      params[:baner]
    end
end
