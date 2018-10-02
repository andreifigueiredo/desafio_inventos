class ReportReservaMailer < ApplicationMailer
    def notify_admin(reserva, user)
        @reserva = reserva
        @user = user
        mail(to: "raquel@inventosdigitais.com.br", subject: "Reserva Efetuada")
     end
end
