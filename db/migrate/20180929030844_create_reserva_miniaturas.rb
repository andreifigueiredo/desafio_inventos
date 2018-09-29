class CreateReservaMiniaturas < ActiveRecord::Migration[5.2]
  def change
    create_table :reserva_miniaturas do |t|
      t.integer :quantidade

      t.timestamps
    end
  end
end
