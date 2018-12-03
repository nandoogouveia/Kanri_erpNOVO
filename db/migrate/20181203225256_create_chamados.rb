class CreateChamados < ActiveRecord::Migration[5.2]
  def change
    create_table :chamados do |t|
      t.string :fornecedor
      t.string :cliente
      t.string :site
      t.string :endereco
      t.string :bairro
      t.integer :cep
      t.string :cidade
      t.string :estado
      t.string :tecnico
      t.date :data
      t.integer :numero
      t.integer :nfornecedor
      t.integer :ncliente
      t.text :observacao

      t.timestamps
    end
  end
end
