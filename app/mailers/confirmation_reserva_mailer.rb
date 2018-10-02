class ConfirmationReservaMailer < ApplicationMailer
    def notify_user(reserva, user)
       @reserva = reserva
       @user = user
       mail(to: @user.email, subject: "Reserva Efetuada")
    end
end
