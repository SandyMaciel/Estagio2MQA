json.array!(@doacao_materials) do |doacao_material|
  json.extract! doacao_material, :id, :instuicao_id, :quantidade, :descricao
  json.url doacao_material_url(doacao_material, format: :json)
end
