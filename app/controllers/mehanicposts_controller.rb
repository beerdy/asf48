class MehanicpostsController < ApplicationController
  before_action :set_mehanicpost, only: [:show, :edit, :update, :destroy]

  # GET /mehanicposts
  # GET /mehanicposts.json
  def index
    @mehanicposts = Mehanicpost.all
  end

  # GET /mehanicposts/1
  # GET /mehanicposts/1.json
  def show
  end

  # GET /mehanicposts/new
  def new
    @mehanicpost = Mehanicpost.new
  end

  # GET /mehanicposts/1/edit
  def edit
  end

  # POST /mehanicposts
  # POST /mehanicposts.json
  def create
    @mehanicpost = Mehanicpost.new(mehanicpost_params)

    respond_to do |format|
      if @mehanicpost.save
        format.html { redirect_to @mehanicpost, notice: 'Mehanicpost was successfully created.' }
        format.json { render :show, status: :created, location: @mehanicpost }
      else
        format.html { render :new }
        format.json { render json: @mehanicpost.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mehanicposts/1
  # PATCH/PUT /mehanicposts/1.json
  def update
    respond_to do |format|
      if @mehanicpost.update(mehanicpost_params)
        format.html { redirect_to @mehanicpost, notice: 'Mehanicpost was successfully updated.' }
        format.json { render :show, status: :ok, location: @mehanicpost }
      else
        format.html { render :edit }
        format.json { render json: @mehanicpost.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mehanicposts/1
  # DELETE /mehanicposts/1.json
  def destroy
    @mehanicpost.destroy
    respond_to do |format|
      format.html { redirect_to mehanicposts_url, notice: 'Mehanicpost was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mehanicpost
      @mehanicpost = Mehanicpost.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def mehanicpost_params
      params.require(:mehanicpost).permit(:title, :description, :image_url)
    end
end
