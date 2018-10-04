class ChangeDefaultValueForPrecoTotal < ActiveRecord::Migration[5.2]
  def change
    change_column_default(:reservas, :preco_total, 0)
  end
end
