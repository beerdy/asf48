class PhotobooksController < ApplicationController
  before_action :set_photobook, only: [:show, :edit, :update, :destroy]

  # GET /photobooks
  # GET /photobooks.json
  def index
    @photobooks = Photobook.all
  end

  # GET /photobooks/1
  # GET /photobooks/1.json
  def show
  end

  # GET /photobooks/new
  def new
    @photobook = Photobook.new
  end

  # GET /photobooks/1/edit
  def edit
  end

  # POST /photobooks
  # POST /photobooks.json
  def create
    @photobook = Photobook.new(photobook_params)

    respond_to do |format|
      if @photobook.save
        format.html { redirect_to @photobook, notice: 'Photobook was successfully created.' }
        format.json { render :show, status: :created, location: @photobook }
      else
        format.html { render :new }
        format.json { render json: @photobook.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /photobooks/1
  # PATCH/PUT /photobooks/1.json
  def update
    respond_to do |format|
      if @photobook.update(photobook_params)
        format.html { redirect_to @photobook, notice: 'Photobook was successfully updated.' }
        format.json { render :show, status: :ok, location: @photobook }
      else
        format.html { render :edit }
        format.json { render json: @photobook.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /photobooks/1
  # DELETE /photobooks/1.json
  def destroy
    @photobook.destroy
    respond_to do |format|
      format.html { redirect_to photobooks_url, notice: 'Photobook was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_photobook
      @photobook = Photobook.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def photobook_params
      params.require(:photobook).permit(:title, :description, :image_uid)
    end
end
