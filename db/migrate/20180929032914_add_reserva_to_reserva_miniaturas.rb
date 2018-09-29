class AddReservaToReservaMiniaturas < ActiveRecord::Migration[5.2]
  def change
    add_reference :reserva_miniaturas, :reserva, foreign_key: true
  end
end
