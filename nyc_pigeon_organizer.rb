def nyc_pigeon_organizer(data)
  pigeons_first = {}
  data.each do |general_facts, branched_facts|
    branched_facts.each do |detailed_fact, names_array|
      names_array.each do |specific_name|
      pigeons_first[specific_name] ||= {}
      pigeons_first[specific_name][general_facts] ||= []
      pigeons_first[specific_name][general_facts]<< detailed_fact.to_s  
      end
    end
  end
 return pigeons_first
end


#to_str vs to_s https://marcgg.com/blog/2017/01/23/ruby-to-s-to-str/