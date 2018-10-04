class ChangeColumnPrecoAndPrecoTotal < ActiveRecord::Migration[5.2]
  def change
    change_column :reservas, :preco_total, :float
    change_column :miniaturas, :preco, :float
  end
end
