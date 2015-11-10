class ClienteVuelosController < ApplicationController
  before_action :set_cliente_vuelo, only: [:show, :edit, :update, :destroy]

  # GET /cliente_vuelos
  # GET /cliente_vuelos.json
  def index
    @cliente_vuelos = ClienteVuelo.all
  end

  # GET /cliente_vuelos/1
  # GET /cliente_vuelos/1.json
  def show
  end

  # GET /cliente_vuelos/new
  def new
    @cliente_vuelo = ClienteVuelo.new
  end

  # GET /cliente_vuelos/1/edit
  def edit
  end

  # POST /cliente_vuelos
  # POST /cliente_vuelos.json
  def create
    @cliente_vuelo = ClienteVuelo.new(cliente_vuelo_params)

    respond_to do |format|
      if @cliente_vuelo.save
        format.html { redirect_to @cliente_vuelo, notice: 'Cliente vuelo was successfully created.' }
        format.json { render :show, status: :created, location: @cliente_vuelo }
      else
        format.html { render :new }
        format.json { render json: @cliente_vuelo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cliente_vuelos/1
  # PATCH/PUT /cliente_vuelos/1.json
  def update
    respond_to do |format|
      if @cliente_vuelo.update(cliente_vuelo_params)
        format.html { redirect_to @cliente_vuelo, notice: 'Cliente vuelo was successfully updated.' }
        format.json { render :show, status: :ok, location: @cliente_vuelo }
      else
        format.html { render :edit }
        format.json { render json: @cliente_vuelo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cliente_vuelos/1
  # DELETE /cliente_vuelos/1.json
  def destroy
    @cliente_vuelo.destroy
    respond_to do |format|
      format.html { redirect_to cliente_vuelos_url, notice: 'Cliente vuelo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cliente_vuelo
      @cliente_vuelo = ClienteVuelo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cliente_vuelo_params
      params.require(:cliente_vuelo).permit(:cliente_id, :vuelo_id)
    end
end
