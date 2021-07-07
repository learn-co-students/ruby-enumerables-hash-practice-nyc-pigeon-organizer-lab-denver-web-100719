require 'pry'

def nyc_pigeon_organizer(data)
  pigeons = {}
  data.each do |stats, value|
    value.each do |value2, all_names|
      all_names.each do |name|
        if pigeons[name] == nil
          pigeons[name] = {}
        end
        if pigeons[name][stats] == nil
          pigeons[name][stats] = []
        end
          #binding.pry
        pigeons[name][stats].push(value2.to_s)
      end
    end
  end
  pigeons
end
