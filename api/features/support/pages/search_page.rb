class TesteApi 

    include HTTParty
    base_uri "https://viacep.com.br/ws"

    def cep_correto(zipcode)
        self.class.get("/#{zipcode}/json/")
    end

    def ibge_correto(result)
        JSON.parse(result.body)['ibge']
    end

    def cep_formato_correto_valor_invalido(result)
        JSON.parse(result.body)['erro']
    end

end