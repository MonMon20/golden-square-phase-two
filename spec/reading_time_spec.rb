require "reading_time"

RSpec.describe "reading_time method" do
    context "the method returns the amount of time to read a piece of text" do
        it "returns the time" do
            result = reading_time("Hello all how was your day")
            expect(result).to eq("Reading time = 20.0s")
        end
    end
end