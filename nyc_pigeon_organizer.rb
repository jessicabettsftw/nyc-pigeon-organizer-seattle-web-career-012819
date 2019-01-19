def nyc_pigeon_organizer(data)
  new_pigeon = {}
  pigeon_names = []
  
  colors = data[:color]
  colors.each do |color, names|
    names.each do |name|
      if (pigeon_names.include? name) == false
        pigeon_names.push(name)
      end
    end
  end
  
    data.each do |key, value|
      value.each do |key2, value2|
        value2.each do |temp_name|
          new_pigeon[temp_name][key] = [key2]"
        end
      end
    end
  

end