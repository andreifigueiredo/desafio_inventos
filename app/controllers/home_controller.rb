class HomeController < ApplicationController
  #before_action :authenticate_user!
  def index
    @miniaturas = Miniatura.all
  end
end
