class MiniaturasReserva < ApplicationRecord
    belongs_to :reserva 
    belongs_to :miniatura 

    validates :quantidade, presence: true
    validates :miniatura, presence: true
    validates :reserva, presence: true
end
