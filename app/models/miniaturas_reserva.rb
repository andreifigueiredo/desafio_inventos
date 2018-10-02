class MiniaturasReserva < ApplicationRecord
    validates :reserva_id, presence: true
    validates :miniatura_id, presence: true
end
