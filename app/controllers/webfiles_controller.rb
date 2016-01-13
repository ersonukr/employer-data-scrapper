class WebfilesController < ApplicationController
  before_action :set_webfile, only: [:show, :edit, :update, :destroy]

  # GET /webfiles
  # GET /webfiles.json
  def index
    @webfiles = Webfile.all
  end

  # GET /webfiles/1
  # GET /webfiles/1.json
  def show
  end

  # GET /webfiles/new
  def new
    @webfile = Webfile.new
  end

  # GET /webfiles/1/edit
  def edit
  end

  # POST /webfiles
  # POST /webfiles.json
  def create
    @webfile = Webfile.new(webfile_params)

    respond_to do |format|
      if @webfile.save
        format.html { redirect_to @webfile, notice: 'Webfile was successfully created.' }
        format.json { render :show, status: :created, location: @webfile }
      else
        format.html { render :new }
        format.json { render json: @webfile.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /webfiles/1
  # PATCH/PUT /webfiles/1.json
  def update
    respond_to do |format|
      if @webfile.update(webfile_params)
        format.html { redirect_to @webfile, notice: 'Webfile was successfully updated.' }
        format.json { render :show, status: :ok, location: @webfile }
      else
        format.html { render :edit }
        format.json { render json: @webfile.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /webfiles/1
  # DELETE /webfiles/1.json
  def destroy
    @webfile.destroy
    respond_to do |format|
      format.html { redirect_to webfiles_url, notice: 'Webfile was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_webfile
      @webfile = Webfile.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def webfile_params
      params.require(:webfile).permit(:name, :phone_number)
    end
end
