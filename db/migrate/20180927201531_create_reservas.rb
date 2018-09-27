class CreateReservas < ActiveRecord::Migration[5.2]
  def change
    create_table :reservas do |t|
      t.date :data_da_reserva

      t.timestamps
    end
  end
end
