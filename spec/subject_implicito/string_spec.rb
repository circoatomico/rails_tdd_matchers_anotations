require 'string_nao_vazia'

describe String do
   describe StringNaoVazia do
     it "Não está vazia" do
         puts  subject.inspect
        expect(subject).to eq("Não sou vazio")
     end
   end
end
