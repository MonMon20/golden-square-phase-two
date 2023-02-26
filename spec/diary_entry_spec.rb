require "diary_entry"

RSpec.describe DiaryEntry do
    # context "The class adds a diary entry in which it returns the title, the contents the count of words and reading time" do 
        it "returns the title of the diary entry" do
            diary_entry = DiaryEntry.new("Noughts and Crosses", "This is a book written by Malorie Blackman")
            expect(diary_entry.title).to eq("Noughts and Crosses")
        end
        it "returns the contents of the diary entry" do
            diary_entry = DiaryEntry.new("Noughts and Crosses", "This is a book written by Malorie Blackman")
            expect(diary_entry.contents).to eq("This is a book written by Malorie Blackman")
        end
        it "Returns the number of words in the contents as an integer" do 
            diary_entry = DiaryEntry.new("Noughts and Crosses", "This is a book written by Malorie Blackman") 
            expect(diary_entry.count_words).to eq(8) 
        end
        it "Returns an integer representing an estimate of the reading time in minutes for contents" do
            diary_entry = DiaryEntry.new("Noughts and Crosses", "This is a book written by Malorie Blackman") 
            result = diary_entry.reading_time(5)
            expect(result).to eq(2)
        end
        it "" do
            diary_entry = DiaryEntry.new("Noughts and Crosses", "This is a book written by Malorie Blackman") 
            result = diary_entry.reading_chunk(2,4)  
            expect(result).to eq("This is a book")
        end
        it "" do
            diary_entry = DiaryEntry.new("Noughts and Crosses", "This is a book written by Malorie Blackman") 
            diary_entry.reading_chunk(2,4)  
            result = diary_entry.reading_chunk(2,4)  
            expect(result).to eq("written by Malorie Blackman")
        end
        it "restarts if it finishes exactly on the end" do
            diary_entry = DiaryEntry.new("Noughts and Crosses", "This is a book written by Malorie Blackman") 
            diary_entry.reading_chunk(2,4)
            diary_entry.reading_chunk(2,4)    
            result = diary_entry.reading_chunk(2,4)  
            expect(result).to eq("This is a book")
        end
end
