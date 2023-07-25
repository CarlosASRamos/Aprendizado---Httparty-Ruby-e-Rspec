describe 'fazer requisicao' do
    context 'para alterar dados com' do
        it 'put' do
            @body_put = {
                "name": "nome",
                "last_name": "sobrenome",
                "email": "@gmail",
                "age": "idade",
                "phone": "telefone",
                "address": "endereco",
                "state": "estado",
                "city": "cidade"
            }.to_json
            @requisicao_put Contact.put('/contacts', body: @body_put)
            puts @requisicao_put
        end
        it 'patch' do
            @body_patch = {
                "name": "nome1",
                "last_name": "sobrenome1",
                "email": "1@gmail",
            }.to_json
            @requisicao_patch = Contact.patch('/contacts', body: @body_patch)
            puts @requisicao_patch
        end
    end
end
