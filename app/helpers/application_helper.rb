module ApplicationHelper
    def reserva_ativa
        if current_user != nil
            @reserva = current_user.reservas.last
          else
            @reserva = Reserva.last
          end
    end
end
