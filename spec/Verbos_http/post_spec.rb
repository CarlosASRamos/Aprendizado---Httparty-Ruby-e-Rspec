describe 'fazer uma requicisao' do
    it 'post' do
       @body = {
        "name": "nome",
        "last_name": "sobrenome",
        "email": "@gmail",
        "age": "idade",
        "phone": "telefone",
        "address": "endereco",
        "state": "estado",
        "city": "cidade"
       }.to_json 
       
       #forma simples
       @headers = { 
         "Accept": 'application/vnd.taskmanager.v2'
         'Content-Type': 'application/json'
       }

       @request = HTTParty.post('https://api-de-tarefas.herokuapp.com/contacts', body: @body, headers: @headers)
       puts @request
       
       @request = Contato.post('/contacts', body: @body)
       puts @request
    end
end