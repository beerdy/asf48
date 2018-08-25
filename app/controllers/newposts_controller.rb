class NewpostsController < ApplicationController
  before_action :set_newpost, only: [:show, :edit, :update, :destroy]

  # GET /newposts
  # GET /newposts.json
  def index
    @newposts = Newpost.all
  end

  # GET /newposts/1
  # GET /newposts/1.json
  def show
  end

  # GET /newposts/new
  def new
    @newpost = Newpost.new
  end

  # GET /newposts/1/edit
  def edit
  end

  # POST /newposts
  # POST /newposts.json
  def create
    @newpost = Newpost.new(newpost_params)

    respond_to do |format|
      if @newpost.save
        format.html { redirect_to @newpost, notice: 'Newpost was successfully created.' }
        format.json { render :show, status: :created, location: @newpost }
      else
        format.html { render :new }
        format.json { render json: @newpost.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /newposts/1
  # PATCH/PUT /newposts/1.json
  def update
    respond_to do |format|
      if @newpost.update(newpost_params)
        format.html { redirect_to @newpost, notice: 'Newpost was successfully updated.' }
        format.json { render :show, status: :ok, location: @newpost }
      else
        format.html { render :edit }
        format.json { render json: @newpost.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /newposts/1
  # DELETE /newposts/1.json
  def destroy
    @newpost.destroy
    respond_to do |format|
      format.html { redirect_to newposts_url, notice: 'Newpost was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_newpost
      @newpost = Newpost.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def newpost_params
      params.require(:newpost).permit(:title, :description)
    end
end
