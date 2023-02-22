require "todo"

RSpec.describe "check_todo method" do 
    context "A method that returns true if #TODO included in string or false if not included" do 
        it "return true if #TODO included" do
            result  = check_todo("#TODO I have to walk the dog")
            expect(result).to eq(true)
        end
        it "returns false if #TODO not included" do
            result = check_todo("I need to clean the garage")
            expect(result).to eq(false)
         end
    end
end




        