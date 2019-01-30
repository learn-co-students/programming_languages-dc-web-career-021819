require "pry"

def reformat_languages(languages)
  # your code here
  # style, lang, type
  # lang type type

  new_hash = {}
  

  languages[:oo].each do |k, v|
  
    new_hash[k] = v  #{:ruby => {type: "interpet"}}
    new_hash[k][:style] = [:oo]
    new_hash
  end
  languages[:functional].each do |k, v|
  
    new_hash[k] = v  #{:ruby => {type: "interpet"}}
   
    new_hash[k][:style] =[:functional]
    if languages[:oo].include? (k)
      new_hash[k][:style] << :oo
    end

    
    new_hash
  end


  new_hash


  
end