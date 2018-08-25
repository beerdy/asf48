class HostcoffesController < ApplicationController
  before_action :set_hostcoffe, only: [:show, :edit, :update, :destroy]

  # GET /hostcoffes
  # GET /hostcoffes.json
  def index
    @hostcoffes = Hostcoffe.all
  end

  # GET /hostcoffes/1
  # GET /hostcoffes/1.json
  def show
  end

  # GET /hostcoffes/new
  def new
    @hostcoffe = Hostcoffe.new
  end

  # GET /hostcoffes/1/edit
  def edit
  end

  # POST /hostcoffes
  # POST /hostcoffes.json
  def create
    @hostcoffe = Hostcoffe.new(hostcoffe_params)

    respond_to do |format|
      if @hostcoffe.save
        format.html { redirect_to @hostcoffe, notice: 'Hostcoffe was successfully created.' }
        format.json { render :show, status: :created, location: @hostcoffe }
      else
        format.html { render :new }
        format.json { render json: @hostcoffe.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /hostcoffes/1
  # PATCH/PUT /hostcoffes/1.json
  def update
    respond_to do |format|
      if @hostcoffe.update(hostcoffe_params)
        format.html { redirect_to @hostcoffe, notice: 'Hostcoffe was successfully updated.' }
        format.json { render :show, status: :ok, location: @hostcoffe }
      else
        format.html { render :edit }
        format.json { render json: @hostcoffe.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hostcoffes/1
  # DELETE /hostcoffes/1.json
  def destroy
    @hostcoffe.destroy
    respond_to do |format|
      format.html { redirect_to hostcoffes_url, notice: 'Hostcoffe was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_hostcoffe
      @hostcoffe = Hostcoffe.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def hostcoffe_params
      params.require(:hostcoffe).permit(:title, :description)
    end
end
