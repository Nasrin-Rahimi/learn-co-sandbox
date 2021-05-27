require 'net/http'
require 'open-uri'
require 'json'

class GetProgram
  
  URL = "http://data.cityofnewyork.us/resource/uvks-tn5n.json"
  
  def get_program
    uri = URI.parse(URL)
    response = Net::HTTP.get_response(uri)
    response.body
  end
  
  def program_school
    programs = JSON.parse(self.get_program)
    programs.collect do |program|
      program["agency"]
    end
  end
  
end

programs = GetProgram.new
puts programs.program_school.uniq