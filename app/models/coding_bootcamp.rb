class CodingBootcamp < ActiveRecord::Base
  validates_uniqueness_of :website
  has_many :programs
  accepts_nested_attributes_for :programs

  extend FriendlyId
  friendly_id :name, use: [:slugged, :history]

  def should_generate_new_friendly_id?
    name_changed?
  end
end
