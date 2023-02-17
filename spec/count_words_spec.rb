require "count_words"

RSpec.describe "count_words method" do
    context "A method takes a string as an argument and returns the number of words in that string." do 
        it "returns the number of words in the string" do 
            result = count_words("How are you doing today")
            expect(result).to eq(5)
        end
        it "returns 0 if empty string" do
            result = count_words("")
            expect(result).to eq(0)
        end
    end
end