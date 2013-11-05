class Program < ActiveRecord::Base
  belongs_to :CodingBootcamp
  validates_presence_of :coding_bootcamp_id

  acts_as_taggable
  acts_as_taggable_on :location, :language, :type
end
