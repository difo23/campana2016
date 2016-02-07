class CampanasController < ApplicationController
  before_action :set_campana, only: [:show, :edit, :update, :destroy]

  # GET /campanas
  # GET /campanas.json
  def index
    @campanas = Campana.all
  end

  # GET /campanas/1
  # GET /campanas/1.json
  def show
  end

  # GET /campanas/new
  def new
    @campana = Campana.new
  end

  # GET /campanas/1/edit
  def edit
  end

  # POST /campanas
  # POST /campanas.json
  def create
    @campana = Campana.new(campana_params)

    respond_to do |format|
      if @campana.save
        format.html { redirect_to @campana, notice: 'Campana was successfully created.' }
        format.json { render :show, status: :created, location: @campana }
      else
        format.html { render :new }
        format.json { render json: @campana.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /campanas/1
  # PATCH/PUT /campanas/1.json
  def update
    respond_to do |format|
      if @campana.update(campana_params)
        format.html { redirect_to @campana, notice: 'Campana was successfully updated.' }
        format.json { render :show, status: :ok, location: @campana }
      else
        format.html { render :edit }
        format.json { render json: @campana.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /campanas/1
  # DELETE /campanas/1.json
  def destroy
    @campana.destroy
    respond_to do |format|
      format.html { redirect_to campanas_url, notice: 'Campana was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_campana
      @campana = Campana.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def campana_params
      params.require(:campana).permit(:year, :nombre_distrito_municipal, :codigo_distrito_municipal, :nombre_municipio, :codigo_municipio, :nombre_provincia, :codigo_provincia, :circuncripcion, :nombre_candidato, :posicion_candidatura, :cedula_candidato, :celular_candidato, :email_candidato, :nombre_director_electoral, :cedula_director_electoral, :celular_director_electoral, :email_director_electoral)
    end
end
