describe 'fazer requisicao' do
    it 'delete' do
        Contato.delete('/contacts/85')
    end
end