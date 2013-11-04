puts "scraping"

bootcamper_finder_map = {
  type: 1,
  # focus: 3,
  # length: 5,
  # class_size: 7,
  # sessions: 9,
  # dedication: 11,
  # min_skill: 13,
  # placement_test: 15,
  # prep_work: 17,
  # interview: 19,
  # cost: 21,
  # refund: 23,
  # financing: 25,
  # deposit: 27,
  # payment_plan: 29,
  # job_assistance: 31,
  # housing: 33,
  # visa: 35,
  # email: 37,
  # phone: 39,
  # address: 41,
  # city: 43,
  # country: 45,
  website: 47
}

require "open-uri"
urls = ["http://bootcamper.io/schools/launch-academy", "http://bootcamper.io/schools/hack-reactor", "http://bootcamper.io/schools/makersquare", "http://bootcamper.io/schools/thinkful", "http://bootcamper.io/schools/dev-bootcamp", "http://bootcamper.io/schools/app-academy", "http://bootcamper.io/schools/gschool", "http://bootcamper.io/schools/starter-league", "http://bootcamper.io/schools/general-assembly", "http://bootcamper.io/schools/polycademy", "http://bootcamper.io/schools/hackbright-academy", "http://bootcamper.io/schools/flatiron-school", "http://bootcamper.io/schools/disruption-institute", "http://bootcamper.io/schools/bitmaker-labs", "http://bootcamper.io/schools/davinci-coders", "http://bootcamper.io/schools/refactoru", "http://bootcamper.io/schools/hacker-school", "http://bootcamper.io/schools/hackeryou", "http://bootcamper.io/schools/mobile-makers-academy", "http://bootcamper.io/schools/the-coded", "http://bootcamper.io/schools/nashville-software-school", "http://bootcamper.io/schools/apprentice", "http://bootcamper.io/schools/hungry-academy", "http://bootcamper.io/schools/tealeaf-academy", "http://bootcamper.io/schools/10x", "http://bootcamper.io/schools/portland-code-school", "http://bootcamper.io/schools/coding-dojo", "http://bootcamper.io/schools/bloc", "http://bootcamper.io/schools/learnstreet", "http://bootcamper.io/schools/startup-institute", "http://bootcamper.io/schools/code-fellows", "http://bootcamper.io/schools/coded-classes", "http://bootcamper.io/schools/treehouse", "http://bootcamper.io/schools/epicodus", "http://bootcamper.io/schools/coder-camps", "http://bootcamper.io/schools/makers-academy", "http://bootcamper.io/schools/devpoint-labs", "http://bootcamper.io/schools/fullstack-academy", "http://bootcamper.io/schools/software-craftsmanship-guild", "http://bootcamper.io/schools/ait-learning", "http://bootcamper.io/schools/zipfian-academy", "http://bootcamper.io/schools/devatory", "http://bootcamper.io/schools/codecore-bootcamp", "http://bootcamper.io/schools/prosper-it-academy"]

for url in urls do
  puts url
  doc = Nokogiri::HTML(open(url))
  b = CodingBootcamp.new

  b.name = doc.css("h1.product-title").text
  # b.bootcamp_type = doc.css("table td")[bootcamper_finder_map[:type]].text
  # b.focus = doc.css("table td")[bootcamper_finder_map[:focus]].text
  # b.duration = doc.css("table td")[bootcamper_finder_map[:length]].text
  # b.class_size = doc.css("table td")[bootcamper_finder_map[:class_size]].text
  # b.sessions_per_year = doc.css("table td")[bootcamper_finder_map[:sessions]].text
  # b.weekly_time_commitment = doc.css("table td")[bootcamper_finder_map[:dedication]].text
  # b.min_skill = doc.css("table td")[bootcamper_finder_map[:min_skill]].text
  # b.placement_test = doc.css("table td")[bootcamper_finder_map[:placement_test]].text
  # b.prep_work = doc.css("table td")[bootcamper_finder_map[:prep_work]].text
  # b.interview = doc.css("table td")[bootcamper_finder_map[:interview]].text
  # b.cost = doc.css("table td")[bootcamper_finder_map[:cost]].text
  # b.refund = doc.css("table td")[bootcamper_finder_map[:refund]].text
  # b.financing = doc.css("table td")[bootcamper_finder_map[:financing]].text
  # b.deposit = doc.css("table td")[bootcamper_finder_map[:deposit]].text
  # b.payment_plan = doc.css("table td")[bootcamper_finder_map[:payment_plan]].text
  # b.job_assistance = doc.css("table td")[bootcamper_finder_map[:job_assistance]].text
  # b.housing = doc.css("table td")[bootcamper_finder_map[:housing]].text
  # b.visa = doc.css("table td")[bootcamper_finder_map[:visa]].text
  # b.email = doc.css("table td")[bootcamper_finder_map[:email]].text
  # b.phone = doc.css("table td")[bootcamper_finder_map[:phone]].text
  # b.address = doc.css("table td")[bootcamper_finder_map[:address]].text
  # b.city = doc.css("table td")[bootcamper_finder_map[:city]].text
  # b.country = doc.css("table td")[bootcamper_finder_map[:country]].text
  b.website = doc.css("table td")[bootcamper_finder_map[:website]].text
  b.description = doc.css("#product-description div").inner_html

  if b.save
    puts "."
  else
    puts "err"
    next
  end
  sleep(1)
end