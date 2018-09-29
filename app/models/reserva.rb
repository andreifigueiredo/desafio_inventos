class Reserva < ApplicationRecord
    has_many :reserva_miniaturas
    belongs_to :user

    validates :data_da_reserva, presence: true
    validates :preco_total, presence: true
end
