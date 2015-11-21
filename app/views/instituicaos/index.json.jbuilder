json.array!(@instituicaos) do |instituicao|
  json.extract! instituicao, :id, :nome, :email, :senha, :cnpj, :endereco, :telefone, :descricao
  json.url instituicao_url(instituicao, format: :json)
end
