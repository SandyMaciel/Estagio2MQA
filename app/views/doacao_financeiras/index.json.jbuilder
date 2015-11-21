json.array!(@doacao_financeiras) do |doacao_financeira|
  json.extract! doacao_financeira, :id, :instuicao_id, :nome, :banco, :titular, :agencia, :conta, :cnpj
  json.url doacao_financeira_url(doacao_financeira, format: :json)
end
