describe 'fazer uma requisição' do
    it 'get' do
        @melhor_opcao Contato.get('/contacts')
        puts @melhor_opcao
    @primeira_opcao HTTParty.get('https://api-de-tarefas.herokuapp.com/contacts')
    puts @primeira_opcao
    end
end