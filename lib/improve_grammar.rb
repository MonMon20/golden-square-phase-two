# Collaboration with Fiona
def improve_grammar(text)
    if text == ("")
      return text
    elsif text.include? (".")
      return text.capitalize
    else
    text.capitalize + "."
    end
  end