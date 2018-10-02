class ConfirmationReservaMailer < ApplicationMailer
    def notify_user(reserva)
       @reserva = reserva
       mail(to: "miguel@inventosdigitais.com.br", subject: "Reserva Efetuada")
    end
end
