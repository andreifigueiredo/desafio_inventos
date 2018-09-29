class ChangeReservasMiniaturasToMiniaturasReservas < ActiveRecord::Migration[5.2]
  def change
    rename_table :reservas_miniaturas, :miniaturas_reservas
  end
end
