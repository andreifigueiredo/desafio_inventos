class Miniatura < ApplicationRecord
    has_and_belongs_to_many :reservas
end
