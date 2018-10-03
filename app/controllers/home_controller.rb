class HomeController < ApplicationController
  #before_action :authenticate_user!
  def index
    @miniaturas = Miniatura.all
    if current_user != nil
      @reserva = current_user.reservas.last
    else
      @reserva = Reserva.last
    end
  end
end
