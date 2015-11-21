class CreateDoacaoMaterials < ActiveRecord::Migration
  def change
    create_table :doacao_materials do |t|
      t.integer :instuicao_id
      t.decimal :quantidade
      t.text :descricao

      t.timestamps null: false
    end
  end
end
