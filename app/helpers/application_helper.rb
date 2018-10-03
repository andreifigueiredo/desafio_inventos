module ApplicationHelper
    def reserva_ativa
        @reserva = current_user.reservas.last
    end
end
