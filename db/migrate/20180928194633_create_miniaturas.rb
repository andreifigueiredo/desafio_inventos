class CreateMiniaturas < ActiveRecord::Migration[5.2]
  def change
    create_table :miniaturas do |t|
      t.string :nome
      t.decimal :tamanho
      t.decimal :preco
      t.string :descricao

      t.timestamps
    end
  end
end
