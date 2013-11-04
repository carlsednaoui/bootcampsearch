class CodingBootcamp < ActiveRecord::Base
  validates_uniqueness_of :website

  extend FriendlyId
  friendly_id :name, use: :slugged

  # Ensure that FriendlyId does NOT update URL on bootcamp name change
  def should_generate_new_friendly_id?
    new_record?
  end
end
