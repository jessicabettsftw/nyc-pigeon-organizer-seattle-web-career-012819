def nyc_pigeon_organizer(data)
  new_pigeon = {}
  pigeon_names = []

  data.each do |descripter, values|
    values.each do |adjective, values2|
      values2.each do |names|
        puts "new_pigeon[#{names}][#{descripter}] = #{adjective}"
        new_pigeon[names][descripter] = adjective
      end
    end
  end
  new_pigeon
end