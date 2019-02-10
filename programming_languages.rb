def reformat_languages(languages)
  new_hash = {}
  # array of languages [:oo, :functional]
  styles = languages.keys
  oo_languages = languages[:oo]
  functional_languages = languages[:functional]
  new_hash.merge!(oo_languages)
  new_hash.merge!(functional_languages)

  new_hash.each do | key, value |
    new_hash[key][:style] = []
    if key == :javascript
      new_hash[key][:style] << styles[0] << styles[1]
    elsif key == :ruby || key == :python || key == :java
      new_hash[key][:style] << styles[0]
    else
      new_hash[key][:style] << styles[1]
    end
  end
  new_hash
end
