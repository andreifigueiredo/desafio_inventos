class AddMiniaturaToReservaMiniaturas < ActiveRecord::Migration[5.2]
  def change
    add_reference :reserva_miniaturas, :miniatura, foreign_key: true
  end
end
