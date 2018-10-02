class ConfirmationReservaMailer < ApplicationMailer
    def notify_user(reserva)
       @reserva = reserva
       mail(to: "andreipaesfigueiredo@gmail.com", subject: "Reserva Efetuada")
    end
end
