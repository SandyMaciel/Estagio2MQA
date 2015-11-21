class CreateDoacaoFinanceiras < ActiveRecord::Migration
  def change
    create_table :doacao_financeiras do |t|
      t.integer :instuicao_id
      t.string :nome
      t.string :banco
      t.string :titular
      t.string :agencia
      t.string :conta
      t.string :cnpj

      t.timestamps null: false
    end
  end
end
