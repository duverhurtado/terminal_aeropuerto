class AerolineasController < ApplicationController
  before_action :set_aerolinea, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_usuario!, except: [:show, :index]
  # GET /aerolineas
  # GET /aerolineas.json
  def index
    @aerolineas = Aerolinea.all
  end

  # GET /aerolineas/1
  # GET /aerolineas/1.json
  def show
  end

  # GET /aerolineas/new
  def new
    @aerolinea = Aerolinea.new
  end

  # GET /aerolineas/1/edit
  def edit
  end

  # POST /aerolineas
  # POST /aerolineas.json
  def create
    @aerolinea = Aerolinea.new(aerolinea_params)

    respond_to do |format|
      if @aerolinea.save
        format.html { redirect_to @aerolinea, notice: 'Aerolinea was successfully created.' }
        format.json { render :show, status: :created, location: @aerolinea }
      else
        format.html { render :new }
        format.json { render json: @aerolinea.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /aerolineas/1
  # PATCH/PUT /aerolineas/1.json
  def update
    respond_to do |format|
      if @aerolinea.update(aerolinea_params)
        format.html { redirect_to @aerolinea, notice: 'Aerolinea was successfully updated.' }
        format.json { render :show, status: :ok, location: @aerolinea }
      else
        format.html { render :edit }
        format.json { render json: @aerolinea.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /aerolineas/1
  # DELETE /aerolineas/1.json
  def destroy
    @aerolinea.destroy
    respond_to do |format|
      format.html { redirect_to aerolineas_url, notice: 'Aerolinea was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_aerolinea
      @aerolinea = Aerolinea.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def aerolinea_params
      params.require(:aerolinea).permit(:nombre, :direccion, :telefono)
    end
end
