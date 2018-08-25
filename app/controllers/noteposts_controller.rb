class NotepostsController < ApplicationController
  before_action :set_notepost, only: [:show, :edit, :update, :destroy]

  # GET /noteposts
  # GET /noteposts.json
  def index
    @noteposts = Notepost.all
  end

  # GET /noteposts/1
  # GET /noteposts/1.json
  def show
  end

  # GET /noteposts/new
  def new
    @notepost = Notepost.new
  end

  # GET /noteposts/1/edit
  def edit
  end

  # POST /noteposts
  # POST /noteposts.json
  def create
    @notepost = Notepost.new(notepost_params)

    respond_to do |format|
      if @notepost.save
        format.html { redirect_to @notepost, notice: 'Notepost was successfully created.' }
        format.json { render :show, status: :created, location: @notepost }
      else
        format.html { render :new }
        format.json { render json: @notepost.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /noteposts/1
  # PATCH/PUT /noteposts/1.json
  def update
    respond_to do |format|
      if @notepost.update(notepost_params)
        format.html { redirect_to @notepost, notice: 'Notepost was successfully updated.' }
        format.json { render :show, status: :ok, location: @notepost }
      else
        format.html { render :edit }
        format.json { render json: @notepost.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /noteposts/1
  # DELETE /noteposts/1.json
  def destroy
    @notepost.destroy
    respond_to do |format|
      format.html { redirect_to noteposts_url, notice: 'Notepost was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_notepost
      @notepost = Notepost.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def notepost_params
      params.require(:notepost).permit(:title, :description)
    end
end
