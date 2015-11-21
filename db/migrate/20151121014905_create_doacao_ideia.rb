class CreateDoacaoIdeia < ActiveRecord::Migration
  def change
    create_table :doacao_ideia do |t|
      t.integer :instuicao_id
      t.text :descricao
      t.string :finalidade

      t.timestamps null: false
    end
  end
end
