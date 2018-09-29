class Reserva < ApplicationRecord
    belongs_to :user
    has_and_belongs_to_many :miniaturas

    validates :data_da_reserva, presence: true
end
