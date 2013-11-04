class Program < ActiveRecord::Base
  belongs_to :CodingBootcamp
  validates_presence_of :coding_bootcamp_id
end
