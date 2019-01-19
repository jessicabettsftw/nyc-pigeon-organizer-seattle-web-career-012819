def nyc_pigeon_organizer(data)
  new_pigeon = {}

  data.each do |descripter, values|
    values.each do |adjective, values2|
      values2.each do |names|
        if ((new_pigeon.keys).include? names) == false
          new_pigeon[names] = {}
          new_pigeon[names][descripter] = []
          new_pigeon[names][descripter] << adjective.to_s
        else
          puts new_pigeon[names].keys
          if ((new_pigeon[names].keys).include? descripter) == false
            #puts "new descripter"
            new_pigeon[names][descripter] = []
          else
            new_pigeon[names][descripter] << adjective.to_s
          end
        end
      end
    end
  end
  new_pigeon
end