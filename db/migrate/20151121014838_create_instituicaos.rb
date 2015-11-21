class CreateInstituicaos < ActiveRecord::Migration
  def change
    create_table :instituicaos do |t|
      t.string :nome
      t.string :email
      t.string :senha
      t.string :cnpj
      t.string :endereco
      t.string :telefone
      t.text :descricao

      t.timestamps null: false
    end
  end
end
