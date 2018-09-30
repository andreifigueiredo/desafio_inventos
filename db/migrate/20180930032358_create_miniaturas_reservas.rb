class CreateMiniaturasReservas < ActiveRecord::Migration[5.2]
  def change
    create_table :miniaturas_reservas, :id => false do |t|
      t.integer :reserva_id, null: false
      t.integer :miniatura_id, null: false
      t.integer :quantidade

      t.timestamps
    end
  end
end
