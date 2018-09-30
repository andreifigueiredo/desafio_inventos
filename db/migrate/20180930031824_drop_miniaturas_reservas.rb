class DropMiniaturasReservas < ActiveRecord::Migration[5.2]
  def change
    drop_table :miniaturas_reservas
  end
end
