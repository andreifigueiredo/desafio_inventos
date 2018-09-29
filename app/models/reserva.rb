class Reserva < ApplicationRecord
    belongs_to :user

    validates :data_da_reserva, presence: true
    validates :preco_total, presence: true
end
