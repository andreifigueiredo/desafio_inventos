class AddPrecoTotalToReservas < ActiveRecord::Migration[5.2]
  def change
    add_column :reservas, :preco_total, :decimal
  end
end
