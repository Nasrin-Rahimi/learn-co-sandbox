require 'open-uri'
require 'net/http' #require for way2

#way 1
#set the url that we want to get data from
url = "https://learn-co-curriculum.github.io/json-site-example/"

#pass url variable into a parse method that is part of the URL module
uri = URI.parse(url)

#made a get request
#request_result = uri.open # result is a StringIo object
#puts request_result.string

#way2
#send a get request but the return value isn't StringIo object.is a Net::HTTP object
response = Net::HTTP.get_response(uri)
puts response.body