class CodingBootcamp < ActiveRecord::Base
  validates_uniqueness_of :website
end
