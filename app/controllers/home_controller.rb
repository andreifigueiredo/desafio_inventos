class HomeController < ApplicationController
  #before_action :authenticate_user!
  def index
    @miniaturas = Miniatura.all
    @reserva = Reserva.last
  end
end
