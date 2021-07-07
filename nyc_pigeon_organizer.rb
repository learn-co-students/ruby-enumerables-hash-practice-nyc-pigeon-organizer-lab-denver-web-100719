def nyc_pigeon_organizer(data)
  # write your code here!
  pigeon_list = {}
  data.each do |key, value|
    value.each do |new_value, names|
      names.each do |name|

        if !pigeon_list[name]
          pigeon_list[name] = {}
        end

        if !pigeon_list[name][key]
          pigeon_list[name][key] = []
        end

        pigeon_list[name][key].push(new_value.to_s)
      end
    end
  end
  pigeon_list
end
