class ReservaMiniatura < ApplicationRecord
    belongs_to :reserva 
    belongs_to :miniatura 
end
