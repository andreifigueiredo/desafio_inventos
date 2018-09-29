class ReservaMiniaturasController < ApplicationController
  before_action :set_reserva_miniatura, only: [:show, :edit, :update, :destroy]

  # GET /reserva_miniaturas
  # GET /reserva_miniaturas.json
  def index
    @reserva_miniaturas = ReservaMiniatura.all
  end

  # GET /reserva_miniaturas/1
  # GET /reserva_miniaturas/1.json
  def show
  end

  # GET /reserva_miniaturas/new
  def new
    @reserva_miniatura = ReservaMiniatura.new
  end

  # GET /reserva_miniaturas/1/edit
  def edit
  end

  # POST /reserva_miniaturas
  # POST /reserva_miniaturas.json
  def create
    @reserva_miniatura = ReservaMiniatura.new(reserva_miniatura_params)

    respond_to do |format|
      if @reserva_miniatura.save
        format.html { redirect_to @reserva_miniatura, notice: 'Reserva miniatura was successfully created.' }
        format.json { render :show, status: :created, location: @reserva_miniatura }
      else
        format.html { render :new }
        format.json { render json: @reserva_miniatura.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /reserva_miniaturas/1
  # PATCH/PUT /reserva_miniaturas/1.json
  def update
    respond_to do |format|
      if @reserva_miniatura.update(reserva_miniatura_params)
        format.html { redirect_to @reserva_miniatura, notice: 'Reserva miniatura was successfully updated.' }
        format.json { render :show, status: :ok, location: @reserva_miniatura }
      else
        format.html { render :edit }
        format.json { render json: @reserva_miniatura.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /reserva_miniaturas/1
  # DELETE /reserva_miniaturas/1.json
  def destroy
    @reserva_miniatura.destroy
    respond_to do |format|
      format.html { redirect_to reserva_miniaturas_url, notice: 'Reserva miniatura was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_reserva_miniatura
      @reserva_miniatura = ReservaMiniatura.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def reserva_miniatura_params
      params.require(:reserva_miniatura).permit(:quantidade)
    end
end
