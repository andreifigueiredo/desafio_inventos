class ApplicationController < ActionController::Base
    before_action :active_reserva
    
    def active_reserva
        if user_signed_in?
            @reserva = current_user.reservas.last
        end
    end
end
