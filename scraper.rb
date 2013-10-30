puts "scraping"

bootcamper_finder_map = {
  type: 1,
  focus: 3,
  length: 5,
  class_size: 7,
  sessions: 9,
  dedication: 11,
  min_skill: 13,
  placement_test: 15,
  prep_work: 17,
  interview: 19,
  cost: 21,
  refund: 23,
  financing: 25,
  deposit: 27,
  payment_plan: 29,
  job_assistance: 31,
  housing: 33,
  visa: 35,
  email: 37,
  phone: 39,
  address: 41,
  city: 43,
  country: 45,
  website: 47
}

require "open-uri"
url = "http://bootcamper.io/schools/launch-academy"
doc = Nokogiri::HTML(open(url))


puts doc.css("table td")[bootcamper_finder_map[:type]].text
puts doc.css("table td")[bootcamper_finder_map[:focus]].text
puts doc.css("table td")[bootcamper_finder_map[:length]].text
puts doc.css("table td")[bootcamper_finder_map[:class_size]].text
puts doc.css("table td")[bootcamper_finder_map[:sessions]].text
puts doc.css("table td")[bootcamper_finder_map[:dedication]].text
puts doc.css("table td")[bootcamper_finder_map[:min_skill]].text
puts doc.css("table td")[bootcamper_finder_map[:placement_test]].text
puts doc.css("table td")[bootcamper_finder_map[:prep_work]].text
puts doc.css("table td")[bootcamper_finder_map[:interview]].text
puts doc.css("table td")[bootcamper_finder_map[:cost]].text
puts doc.css("table td")[bootcamper_finder_map[:refund]].text
puts doc.css("table td")[bootcamper_finder_map[:financing]].text
puts doc.css("table td")[bootcamper_finder_map[:deposit]].text
puts doc.css("table td")[bootcamper_finder_map[:payment_plan]].text
puts doc.css("table td")[bootcamper_finder_map[:job_assistance]].text
puts doc.css("table td")[bootcamper_finder_map[:housing]].text
puts doc.css("table td")[bootcamper_finder_map[:visa]].text
puts doc.css("table td")[bootcamper_finder_map[:email]].text
puts doc.css("table td")[bootcamper_finder_map[:phone]].text
puts doc.css("table td")[bootcamper_finder_map[:address]].text
puts doc.css("table td")[bootcamper_finder_map[:city]].text
puts doc.css("table td")[bootcamper_finder_map[:country]].text
puts doc.css("table td")[bootcamper_finder_map[:website]].text
