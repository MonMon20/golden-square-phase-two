require "grammar_stats"

RSpec.describe GrammarStats do
    context "" do
        it "returns true if text begins with a capital letter and ends with a sentence-ending punctuation mark." do
            grammar = GrammarStats.new()
            expect(grammar.check("Hello how are you today?")).to eq(true)
        end
        it "returns false if text doesn't begin with a capital letter and ends with a sentence-ending punctuation mark." do
            grammar = GrammarStats.new()
            expect(grammar.check("hello how are you today")).to eq(false) 
        end
        it "fails if string is empty" do
          grammar = GrammarStats.new()
          expect{grammar.check("")}.to raise_error("string cannot be empty") 
        end
        it "returns the percentage" do
            grammar = GrammarStats.new()
            grammar.check("Hello how are you today?")
            grammar.check("hello how are you today") 
            expect(grammar.percentage_good).to eq(50)
        end
    end
end


    
