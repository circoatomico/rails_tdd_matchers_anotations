require 'pessoa'

describe 'Atributos' do

   # before(:each) do
   #   @pessoa = Pessoa.new
   # end

  #  O let é mais indicado neste caso pois o let utiliza o cache para esta variável.
  # O bloco each criaria uma nova pessoa antes de cada teste
   let(:pessoa) { Pessoa.new }

   it 'have_attributes' do
     pessoa.nome = "Jackson"
     pessoa.idade = 20

     expect(pessoa).to have_attributes(nome: a_string_starting_with("J"), idade: (a_value >= 20))
   end

   it 'have_attributes' do
     pessoa.nome = "Jose"
     pessoa.idade = 25

     expect(pessoa).to have_attributes(nome: a_string_starting_with("J"), idade: (a_value >= 20))
   end
end
