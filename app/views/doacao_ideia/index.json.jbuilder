json.array!(@doacao_ideia) do |doacao_ideium|
  json.extract! doacao_ideium, :id, :instuicao_id, :descricao, :finalidade
  json.url doacao_ideium_url(doacao_ideium, format: :json)
end
