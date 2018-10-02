class MiniaturasReservasController < ApplicationController
  before_action :set_miniaturas_reserva, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  # GET /miniaturas_reservas
  # GET /miniaturas_reservas.json
  def index
    @miniaturas_reservas = MiniaturasReserva.all
  end

  # GET /miniaturas_reservas/1
  # GET /miniaturas_reservas/1.json
  def show
  end

  # GET /miniaturas_reservas/new
  def new
    @miniatura = params[:miniatura]
    @miniatura_nome = Miniatura.find(params[:miniatura]).nome 

    @miniaturas_reserva = MiniaturasReserva.new
  end

  # GET /miniaturas_reservas/1/edit
  def edit
  end

  # POST /miniaturas_reservas
  # POST /miniaturas_reservas.json
  def create
    @miniaturas_reserva = MiniaturasReserva.new(miniaturas_reserva_params)

    respond_to do |format|
      if @miniaturas_reserva.save
        format.html { redirect_to home_index_url, notice: 'Miniaturas reserva was successfully created.' }
        format.json { render :show, status: :created, location: @miniaturas_reserva }
      else
        format.html { render :new }
        format.json { render json: @miniaturas_reserva.errors, status: :unprocessable_entity }
      end
      @reserva = Reserva.where(id: @miniaturas_reserva.reserva_id).take
      @miniatura = Miniatura.where(id: @miniaturas_reserva.miniatura_id).take
      if(@reserva != nil)
        if(@reserva.preco_total == nil)
          @preco_total = (@miniatura.preco * @miniaturas_reserva.quantidade)
        else
          @preco_total = @reserva.preco_total + (@miniatura.preco * @miniaturas_reserva.quantidade)
        end
        @reserva.update(preco_total: @preco_total)
      end
    end
  end

  # PATCH/PUT /miniaturas_reservas/1
  # PATCH/PUT /miniaturas_reservas/1.json
  def update
    respond_to do |format|
      if @miniaturas_reserva.update(miniaturas_reserva_params)
        format.html { redirect_to @miniaturas_reserva, notice: 'Miniaturas reserva was successfully updated.' }
        format.json { render :show, status: :ok, location: @miniaturas_reserva }
      else
        format.html { render :edit }
        format.json { render json: @miniaturas_reserva.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /miniaturas_reservas/1
  # DELETE /miniaturas_reservas/1.json
  def destroy
    @miniaturas_reserva.destroy
    respond_to do |format|
      format.html { redirect_to miniaturas_reservas_url, notice: 'Miniaturas reserva was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_miniaturas_reserva
      @miniaturas_reserva = MiniaturasReserva.find(params[:miniatura_id, :reserva_id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def miniaturas_reserva_params
      params.require(:miniaturas_reserva).permit(:miniatura_id, :reserva_id, :quantidade)
    end
end
