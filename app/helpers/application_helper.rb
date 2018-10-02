module ApplicationHelper
    def reserva_ativa
        @reserva = Reserva.last
    end
end
