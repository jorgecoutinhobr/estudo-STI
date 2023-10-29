class CaronasController < ApplicationController
  before_action :set_carona, only: %i[ show edit update destroy ]

  def index
    @caronas = Carona.all
    @paradas = Parada.all
  end

  def show
  end

  def new
    @carona = Carona.new
    @unidades = Unidade.where(data_desativacao: '').all
    @carona.hora = Time.current.in_time_zone('Brasilia')
    @carona.dia = Date.current.in_time_zone('Brasilia')
  end

  def edit
  end

  def create
    @carona = Carona.new(carona_params)
    respond_to do |format|
      if @carona.save
        format.html { redirect_to carona_url(@carona), notice: "Carona was successfully created." }
        format.json { render :show, status: :created, location: @carona }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @carona.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @carona.update(carona_params)
        format.html { redirect_to carona_url(@carona), notice: "Carona was successfully updated." }
        format.json { render :show, status: :ok, location: @carona }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @carona.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @carona.destroy

    respond_to do |format|
      format.html { redirect_to caronas_url, notice: "Carona was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    def set_carona
      @carona = Carona.find(params[:id])
    end

    def carona_params
      params.require(:carona).permit(:nome, :partida, :destino, :dia, :hora, :passageiros, :valor, :observacao, paradas_attributes: [:id, :endereco, :_destroy])
    end
end
