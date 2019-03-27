# require 'pry'
#
# languages = {
#   :oo => { #style
#     :ruby => { #lang / description
#       :type => "interpreted" #type =
#     },
#     :javascript => {
#       :type => "interpreted"
#     },
#     :python => {
#       :type => "interpreted"
#     },
#     :java => {
#       :type => "compiled"
#     }
#   },
#   :functional => {
#     :clojure => {
#       :type => "compiled"
#     },
#     :erlang => {
#       :type => "compiled"
#     },
#     :scala => {
#       :type => "compiled"
#     },
#     :javascript => {
#       :type => "interpreted"
#     }
#
#   }
# }

# def reformat_languages(languages)
#   new_hash = {}
#   languages.each do |style, description|
#     description.each do |lang, type|
#       type.each do |lang_type, c_or_i|
#         new_hash[lang] = {}
#         new_hash[lang][lang_type] = ""
#         new_hash[lang][lang_type] << c_or_i
#         new_hash[lang][:style] = []
#         new_hash[lang][:style] << style
#         #At this point, everything but javascript is formatted correctly. Above commands pushes :oo into style, but not :functional. Don't know how to do this (with this method)
#       end
#     end
#   end
#   new_hash
# end

# reformat_languages(languages)

# def reformat_languages(languages)
#   new_hash = {}
#   languages.each do |style, description|
#     description.each do |lang, type|
#       if new_hash.has_key?(lang)
#         new_hash[lang][:style] << style
#       else
#         new_hash[lang] = type
#         new_hash[lang][:style] = style
#       end
#     end
#   end
#   new_hash
# end

def reformat_languages(languages)
  new_hash = {}
  languages.each do |style, lang_hash|
    lang_hash.each do |lang, type_hash|
      type_hash.each do |sym, str|
        if new_hash.include?(lang)
          new_hash[lang][:style] << style
        else
          new_hash[lang] = {:type => str, :style => [style]}
        end
      end
    end
  end
  new_hash
end
