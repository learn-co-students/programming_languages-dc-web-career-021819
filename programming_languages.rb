require 'pry'

def reformat_languages(languages)
  new_hash = {}
  
  languages.each do |styles, value_hash|
    value_hash.each do |language_name, attributes_hash|
      attributes_hash.each do |type, type_value|
        
        
        if new_hash[language_name].nil?
          #if language_name :ruby doesn't exist in new hash
          new_hash[language_name] = {}  #initiate a new hash for the value of :ruby
        end
        
        #new_hash[language_name] = {type => type_value} #, :style => []}
      


        
        new_hash[language_name][:style] ||= []
        new_hash[language_name][:style] << styles

        
        if new_hash[language_name][type].nil?
          #if :ruby language key doesn't have a :type key nested within it
          new_hash[language_name][type] = type_value  #set this :type key to equal the str "interpreted"
        end
        
      end
      
      
    end
    
  end
  
  return new_hash
end



