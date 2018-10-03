class MiniaturasReserva < ApplicationRecord
    belongs_to :reserva, :foreign_key => 'reserva_id'
    belongs_to :miniatura, :foreign_key => 'miniatura_id'
    validates :reserva_id, :miniatura_id, presence: true
end
