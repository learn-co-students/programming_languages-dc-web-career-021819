def reformat_languages(languages)
  new_hash = {}
  style_array = []
  languages.each do | style, langs |
    langs.each do | lang, attribute |
      new_hash[lang] = attribute
    end 
    new_hash.each do | lang, attributes |
      attributes[:style] = []
    end 
  end 
  languages.each do | style, langs |
    langs.each do | lang, attribute |
      new_hash.each do | new_lang, attributes |
        if lang == new_lang
          attributes[:style] << style
        end 
      end 
    end 
  end 
  new_hash
end

