def check_todo(text)
    text_arr = text.split(" ")
    if text_arr.include?("#TODO")
        return true
    else
        return false
    end
end
