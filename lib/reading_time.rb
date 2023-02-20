#Collabrated on with Fiona
def reading_time(text)
  word_per_second = 200/60.to_f
  text_arr = text.split(" ")
  time_read_in_s = text_arr.length * word_per_second
  return "Reading time = #{time_read_in_s}s"
end




