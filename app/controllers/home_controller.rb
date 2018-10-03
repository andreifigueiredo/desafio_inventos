class HomeController < ApplicationController
  #before_action :authenticate_user!
  def index
    @miniaturas = Miniatura.all
    @reserva = current_user.reservas.last
  end
end
