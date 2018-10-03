class MiniaturasController < ApplicationController
  before_action :set_miniatura, only: [:show, :edit, :update, :destroy]

  # GET /miniaturas
  # GET /miniaturas.json
  def index
    @miniaturas = Miniatura.all
  end

  # GET /miniaturas/1
  # GET /miniaturas/1.json
  def show
    if current_user != nil
      @reserva = current_user.reservas.last
    else
      @reserva = Reserva.last
    end
  end

  # GET /miniaturas/new
  def new
    @miniatura = Miniatura.new
  end

  # GET /miniaturas/1/edit
  def edit
  end

  # POST /miniaturas
  # POST /miniaturas.json
  def create
    @miniatura = Miniatura.new(miniatura_params)

    respond_to do |format|
      if @miniatura.save
        format.html { redirect_to @miniatura, notice: 'Miniatura was successfully created.' }
        format.json { render :show, status: :created, location: @miniatura }
      else
        format.html { render :new }
        format.json { render json: @miniatura.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /miniaturas/1
  # PATCH/PUT /miniaturas/1.json
  def update
    respond_to do |format|
      if @miniatura.update(miniatura_params)
        format.html { redirect_to @miniatura, notice: 'Miniatura was successfully updated.' }
        format.json { render :show, status: :ok, location: @miniatura }
      else
        format.html { render :edit }
        format.json { render json: @miniatura.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /miniaturas/1
  # DELETE /miniaturas/1.json
  def destroy
    @miniatura.destroy
    respond_to do |format|
      format.html { redirect_to miniaturas_url, notice: 'Miniatura was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_miniatura
      @miniatura = Miniatura.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def miniatura_params
      params.require(:miniatura).permit(:nome, :tamanho, :preco, :descricao)
    end
end
