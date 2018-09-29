class ChangeReservaMiniaturasToReservasMiniaturas < ActiveRecord::Migration[5.2]
  def change
    rename_table :reserva_miniaturas, :reservas_miniaturas
  end
end
