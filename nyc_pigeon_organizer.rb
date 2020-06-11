require 'pry'
def nyc_pigeon_organizer(data)
  pigeon_list = {}
  data.each do |entry, value|
    value.each do |key, pigeonNamesArray|
      pigeonNamesArray.each do |pigeon_name|
        pigeon_list[pigeon_name] = {} if pigeon_list[pigeon_name] == nil
        pigeon_list[pigeon_name][entry] = [] if pigeon_list[pigeon_name][entry] == nil
        pigeon_list[pigeon_name][entry].push(key.to_s)
      end
    end
  end
  pigeon_list
end
