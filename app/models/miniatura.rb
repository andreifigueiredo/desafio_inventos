class Miniatura < ApplicationRecord
    has_and_belongs_to_many :reservas

    def getQuantidade(reserva)
        @miniaturaReserva = MiniaturasReserva.where(:miniatura_id => self.id, :reserva_id => reserva.id).take
        return @miniaturaReserva.quantidade 
    end
end
