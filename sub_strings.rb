def substrings (string, substr_dictionary)
  string_chars = string.split("")
  substr_dictionary.reduce(Hash.new()) do |hash, substring|
    substrings_of_length = []
    string_chars.each_cons(substring.length) {|substr| substrings_of_length.push(substr.join(""))}
  end
end