def nyc_pigeon_organizer(data)
  new_pigeon = {}

  data.each do |descripter, values|
    values.each do |adjective, values2|
      values2.each do |names|
        puts "new_pigeon[#{names}][#{descripter}] = #{adjective}"
        if ((new_pigeon.keys).include? names) == false
          new_pigeon[names] = {}
          new_pigeon[names][descripter] = []
          new_pigeon[names][descripter] << adjective
        else
          new_pigeon[names][descripter] << adjective
        end
      end
    end
  end
  new_pigeon
end