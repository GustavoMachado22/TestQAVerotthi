
Dado("que eu solicite o CEP {string} à API") do |zipcode|
  @result = TesteApi.new.cep_correto(zipcode)
end

Então("devo receber o código do IBGE do endereço") do
  @ibge = TesteApi.new.ibge_correto(@result)
  puts "O número do IBGE para este CEP é #{@ibge}"
end

Então("o código de retorno da consulta será um {string} e conterá um valor de erro igual a true") do |codigo|
  @falso = TesteApi.new.cep_formato_correto_valor_invalido(@result)
  expect(@result.response.code).to eq codigo
  puts "O código de retorno é #{codigo} com o valor #{@falso}"
end

Então("o código de retorno da consulta será um {string}") do |retorno|
  expect(@result.response.code).to eq retorno
  puts "O código de retorno é #{retorno}"
end