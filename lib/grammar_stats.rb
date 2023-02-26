class GrammarStats
    def initialize
      @regex_punct = ".*\\p{Punct}"
      @num_texts = []
    end
  
    def check(text) 
      # text is a string
      # Returns true or false depending on whether the text begins with a capital
      # letter and ends with a sentence-ending punctuation mark.
        fail "string cannot be empty" if text == ""
        if text[0] == text[0].upcase && text.match(@regex_punct)
            @num_texts.push("true")
            return true
        else
            @num_texts.push("false")
            return false
        end
    end
  
    def percentage_good
        @num_texts.count("true")/@num_texts.count.to_f * 100.ceil
      # Returns as an integer the percentage of texts checked so far that passed
      # the check defined in the `check` method. The number 55 represents 55%.
    end
end