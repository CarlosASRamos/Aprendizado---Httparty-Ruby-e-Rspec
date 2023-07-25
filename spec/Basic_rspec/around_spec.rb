describe 'usando around' do
    around(:each) do |testes|
        puts 'executando comandos antes dos testes'
        testes.run
        puts 'executando comandos depois dos testes'
    end

    it 'de dois numeros' do
        total = 2 + 2
        expect(total).to eq 4
        puts "O total é: #{total}"
        puts 'executando teste'
    end
end