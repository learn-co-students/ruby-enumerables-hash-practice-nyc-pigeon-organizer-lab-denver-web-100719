def nyc_pigeon_organizer(data)
  new_pigeon_hash = {}
  data.each do |attribute_name, attributes|
    attributes.each do |attributes_value, pigeon_names|
      pigeon_names.each do |name|
        new_pigeon_hash[name] ||= {}
        new_pigeon_hash[name][attribute_name] ||= []
        new_pigeon_hash[name][attribute_name].push(attributes_value.to_s)
      end
    end
  end
  new_pigeon_hash
end
