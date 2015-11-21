class CreateDoacaoVoluntarios < ActiveRecord::Migration
  def change
    create_table :doacao_voluntarios do |t|
      t.integer :instuicao_id
      t.string :funcao
      t.string :descricao
      t.boolean :domingo
      t.boolean :segunda
      t.boolean :terca
      t.boolean :quarta
      t.boolean :quinta
      t.boolean :sexta
      t.boolean :sabado
      t.time :horario_inicial
      t.time :horario_final

      t.timestamps null: false
    end
  end
end
