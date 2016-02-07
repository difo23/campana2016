class MesasController < ApplicationController
  before_action :set_mesa, only: [:show, :edit, :update, :destroy]

  # GET /mesas
  # GET /mesas.json
  def index
    @mesas = Mesa.all
  end

  # GET /mesas/1
  # GET /mesas/1.json
  def show
  end

  # GET /mesas/new
  def new
    @mesa = Mesa.new
  end

  # GET /mesas/1/edit
  def edit
  end

  # POST /mesas
  # POST /mesas.json
  def create
    #@mesa = Mesa.new(mesa_params)

     @recinto = Recinto.find(params[:recinto_id])
    @mesa = @recinto.mesas.create(mesa_params)

    respond_to do |format|
      if @mesa.save
        format.html { redirect_to @mesa, notice: 'Mesa was successfully created.' }
        format.json { render :show, status: :created, location: @mesa }
      else
        format.html { render :new }
        format.json { render json: @mesa.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mesas/1
  # PATCH/PUT /mesas/1.json
  def update
    respond_to do |format|
      if @mesa.update(mesa_params)
        format.html { redirect_to @mesa, notice: 'Mesa was successfully updated.' }
        format.json { render :show, status: :ok, location: @mesa }
      else
        format.html { render :edit }
        format.json { render json: @mesa.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mesas/1
  # DELETE /mesas/1.json
  def destroy
    @recinto = Recinto.find(params[:recinto_id])
    @mesa = @recinto.mesas.create(mesa_params)
    @mesa.destroy
    respond_to do |format|
      format.html { redirect_to mesas_url, notice: 'Mesa was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mesa
      @mesa = Mesa.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def mesa_params
      params.require(:mesa).permit(:codigo_mesa, :nombre_encargado_mesa, :cedula_encargado_mesa, :celular_encargado_mesa, :email_encargado_mesa, :nombre_delegado, :cedula_delegado, :celular_delegado, :String, :email_delegado, :nombre_suplente, :cedula_suplente, :celular_suplente, :email_suplente, :total_, :inscritos_anterio, :total_pld_anterior, :total_prd_anterior, :total_votos_validos_anterior, :total_votos_nulos_anterior, :total_votos_observados_anterior, :total_votos_emitidos_anterior, :total_inscritos)
    end
end
