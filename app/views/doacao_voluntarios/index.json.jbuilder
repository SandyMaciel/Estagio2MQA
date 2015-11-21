json.array!(@doacao_voluntarios) do |doacao_voluntario|
  json.extract! doacao_voluntario, :id, :instuicao_id, :funcao, :descricao, :domingo, :segunda, :terca, :quarta, :quinta, :sexta, :sabado, :horario_inicial, :horario_final
  json.url doacao_voluntario_url(doacao_voluntario, format: :json)
end
