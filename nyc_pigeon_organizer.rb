def nyc_pigeon_organizer(data)
  new_pigeon = {}
  pigeon_names = get_names(data)
  
  #puts pigeon_names

  data.each do |descripter, values|
    values.each do |adjective, values2|
      values2.each do |names|
        puts "new_pigeon[#{names}][#{descripter}] = #{adjective}"
        if (new_pigeon.include? names) == false
          #add new name
          new_pigeon[names] = {}
        else
          new_pigeon[names][descripter] = []
          new_pigeon[names][descripter] << adjective
        end
      end
    end
  end
  new_pigeon
end

def get_names(data)
  names =[]
  
  colors = data[:color]
  colors.each do |color, array|
    array.each do |name|
      if (names.include? name) == false
        names.push(name)
      end
    end
  end
  names
end