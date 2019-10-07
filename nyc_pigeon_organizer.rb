def nyc_pigeon_organizer(data)
  # write your code here!
  myhash = {}
  data.each do |key, value|
    value.each do |new_value, names|
      names.each do |name|
        
        if !myhash[name]
          myhash[name] = {}
        end

        if !myhash[name][key]
          myhash[name][key] = []
        end

        myhash[name][key] << new_value.to_s

      end
    end
  end
  myhash
end