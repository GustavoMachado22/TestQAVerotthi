#language: pt
#encoding: utf-8
#author: gustavo.machado
#date: 04/06/2020
#version:1.0

Funcionalidade: Consultar os dados de um endereço a partir de um CEP
 Desejo fazer a buscas por CEP utilizando API e visualizar o resultado esperado

Cenário: consultar os dados de um endereço com sucesso
    Dado que eu solicite o CEP '01001000' à API 
    Então devo receber o código do IBGE do endereço

Cenário: consultar os dados de um endereço formato válido porém inexistente
    Dado que eu solicite o CEP '99999999' à API 
    Então o código de retorno da consulta será um '200' e conterá um valor de erro igual a true

Cenário: consultar os dados de um endereço inválido com 9 dígitos
    Dado que eu solicite o CEP '950100100' à API 
    Então o código de retorno da consulta será um '400'

Cenário: consultar os dados de um endereço inválido com alfanumérico
    Dado que eu solicite o CEP '95010A10' à API 
    Então o código de retorno da consulta será um '400'

Cenário: consultar os dados de um endereço inválido com caractere
    Dado que eu solicite o CEP '95010@10' à API 
    Então o código de retorno da consulta será um '400'

