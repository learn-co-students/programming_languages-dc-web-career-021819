require 'pry'
def reformat_languages(languages)
  new_hash = {}
  languages.each do |style, langs|
    langs.each do | lang_name, type_hash |
      if new_hash[lang_name].nil?
        new_hash[lang_name] = {:style => []}
      end
      new_hash[lang_name][:type] = type_hash[:type]
      # new_hash[lang_name][:style] = [style]
      new_hash[lang_name][:style] << style
    end
  end
  new_hash
end
