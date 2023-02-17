require "make_snippet"

RSpec.describe "make_snippet method" do
    it "retuns an empty string" do 
        result = make_snippet("")
        expect(result).to eq("")
    end
    it "returns a string with 5 words or less" do
        result = make_snippet("How are you today chief")
        expect(result).to eq("How are you today chief")
    end
    it "returns a string ending with '...' if words are more than five" do
        result = make_snippet("Good morning how are you today chief")
        expect(result).to eq("Good morning how are you ...")
    end 
end
