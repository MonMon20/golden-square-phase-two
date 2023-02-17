def make_snippet(string)
    arr = string.split(" ")
    if arr.length <= 5
      return string
    else
       first_five_words = arr.slice(0,5).join(" ")
      return  first_five_words +" ..."
    end
end
    