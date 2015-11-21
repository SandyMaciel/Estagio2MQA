class CreateDoacaoCaptacaos < ActiveRecord::Migration
  def change
    create_table :doacao_captacaos do |t|
      t.integer :instuicao_id
      t.string :titulo
      t.string :objetivo
      t.text :meta

      t.timestamps null: false
    end
  end
end
