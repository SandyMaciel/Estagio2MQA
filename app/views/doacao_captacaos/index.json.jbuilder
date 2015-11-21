json.array!(@doacao_captacaos) do |doacao_captacao|
  json.extract! doacao_captacao, :id, :instuicao_id, :titulo, :objetivo, :meta
  json.url doacao_captacao_url(doacao_captacao, format: :json)
end
