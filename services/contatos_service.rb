module Contato 
    include HTTParty
    base_uri 'https://api-de-tarefas.herokuapp.com'
    format :json
    headers Accept: 'application/vnd.tasksmanager.v2',
    'Content-Type': 'application/json'
end