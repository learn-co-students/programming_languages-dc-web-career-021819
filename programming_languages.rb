def reformat_languages(languages)
new_hash = {}
languages.each do |name, language|
  language.each do |key, value|
    if new_hash.include?(key)
      new_hash[key][:style].push(name)
    else
      new_hash[key] = value
      new_hash[key][:style] = [name]
    end
  end
end
return new_hash
end