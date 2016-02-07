class InscritoContactadosController < ApplicationController
  before_action :set_inscrito_contactado, only: [:show, :edit, :update, :destroy]

  # GET /inscrito_contactados
  # GET /inscrito_contactados.json
  def index
    @inscrito_contactados = InscritoContactado.all
  end

  # GET /inscrito_contactados/1
  # GET /inscrito_contactados/1.json
  def show
  end

  # GET /inscrito_contactados/new
  def new
    @inscrito_contactado = InscritoContactado.new
  end

  # GET /inscrito_contactados/1/edit
  def edit
  end

  # POST /inscrito_contactados
  # POST /inscrito_contactados.json
  def create
    #@inscrito_contactado = InscritoContactado.new(inscrito_contactado_params)

    @mesa = Mesa.find(params[:mesa_id])
    @inscrito_contactado = @mesa.inscrito_contactados.create(inscrito_contactado_params)

    respond_to do |format|
      if @inscrito_contactado.save
        format.html { redirect_to @inscrito_contactado, notice: 'Inscrito contactado was successfully created.' }
        format.json { render :show, status: :created, location: @inscrito_contactado }
      else
        format.html { render :new }
        format.json { render json: @inscrito_contactado.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /inscrito_contactados/1
  # PATCH/PUT /inscrito_contactados/1.json
  def update
    respond_to do |format|
      if @inscrito_contactado.update(inscrito_contactado_params)
        format.html { redirect_to @inscrito_contactado, notice: 'Inscrito contactado was successfully updated.' }
        format.json { render :show, status: :ok, location: @inscrito_contactado }
      else
        format.html { render :edit }
        format.json { render json: @inscrito_contactado.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /inscrito_contactados/1
  # DELETE /inscrito_contactados/1.json
  def destroy
    @mesa = Mesa.find(params[:mesa_id])
    @inscrito_contactado = @mesa.inscrito_contactados.create(inscrito_contactado_params)
    @inscrito_contactado.destroy
    respond_to do |format|
      format.html { redirect_to inscrito_contactados_url, notice: 'Inscrito contactado was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_inscrito_contactado
      @inscrito_contactado = InscritoContactado.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def inscrito_contactado_params
      params.require(:inscrito_contactado).permit(:nombre_inscrito, :cedula_inscrito, :celular_inscrito, :codigo_mesa, :edad_inscrito, :sexo_inscrito)
    end
end
