# Collaboration with Fiona
require "improve_grammar"

describe "improve_grammar method" do
  it "corrects missing capitals and full stops" do
    result = improve_grammar("")
    expect(result).to eq("")
  end

  it "corrects missing capitals and full stops" do
    result = improve_grammar("hi how are you")
    expect(result).to eq("Hi how are you.")
  end

  it "corrects missing capitals and full stops" do
    result = improve_grammar("Hi how are you.")
    expect(result).to eq("Hi how are you.")
  end

  it "corrects missing capitals and full stops" do
    result = improve_grammar("Hi. how are you.")
    expect(result).to eq("Hi. How are you.")
  end
end
