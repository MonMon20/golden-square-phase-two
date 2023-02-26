class DiaryEntry
    def initialize(title, contents) # title, contents are strings
      @title = title
      @contents = contents
      @furthest_word_read = 0
    end
  
    def title
      return @title
    end
  
    def contents
      return @contents
    end
  
    def count_words
      contents_count = @contents.split(" ").length
      return contents_count
    end
  
    def reading_time(wpm)
        contents_wpm = (count_words/wpm.to_f).ceil
        return contents_wpm
        # wpm is an integer representing the number of words the
                          # user can read per minute
      # Returns an integer representing an estimate of the reading time in minutes
      # for the contents at the given wpm.
    end
  
    def reading_chunk(wpm, minutes) 
        #My work 
        contents_arr= @contents.split(" ")
        # contents_count = contents_arr.length
        # num_of_words = (contents_count * wpm)/minutes
        # contents_arr.slice(0,num_of_words).join(" ")
        #Kay's work
        no_words_we_can_read = wpm * minutes
        start_from = @furthest_word_read
        end_at = @furthest_word_read + no_words_we_can_read
        word_list = contents_arr[start_from, end_at]
        if end_at >= count_words
            @furthest_word_read = 0
        else
            @furthest_word_read = end_at
        end
        return word_list.join(" ")
        
                                    # `wpm` is an integer representing the number
                                    # of words the user can read per minute
                                    # `minutes` is an integer representing the
                                    # number of minutes the user has to read
      # Returns a string with a chunk of the contents that the user could read
      # in the given number of minutes.
      # If called again, `reading_chunk` should return the next chunk, skipping
      # what has already been read, until the contents is fully read.
      # The next call after that it should restart from the beginning.
    end
  end