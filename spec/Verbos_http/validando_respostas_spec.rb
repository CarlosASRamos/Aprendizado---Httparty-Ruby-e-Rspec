describe 'fazer uma requisicao' do
    it 'get' do
    @melhor_opcao = Contato.get('/contacts')
    puts @melhor_opcao.code
    expect(@melhor_opcao.code).to eq 200
    puts @melhor_opcao.body
    puts @melhor_opcao.parsed_response['data']['attributes']['name']
    expect(@melhor_opcao.parsed_response['data']['attributes']['name']).to eq 'name'
    end
end