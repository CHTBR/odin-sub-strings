def substrings (string, substr_dictionary)
  string_chars = string.split("")
  substr_dictionary.reduce(Hash.new()) do |hash, substring|
    substrings_of_length = []
    string_chars.each_cons(substring.length) {|substr| substrings_of_length.push(substr.join(""))}
    num_of_occurences = substrings_of_length.count(substring)
    hash[substring] = num_of_occurences if num_of_occurences > 0
    hash
  end
end