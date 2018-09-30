class CreateMiniaturasReservas < ActiveRecord::Migration[5.2]
  def change
    create_table :miniaturas_reservas do |t|
      t.integer :quantidade

      t.timestamps
    end
  end
end
