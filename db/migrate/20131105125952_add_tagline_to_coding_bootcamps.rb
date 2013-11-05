class AddTaglineToCodingBootcamps < ActiveRecord::Migration
  def change
    add_column :coding_bootcamps, :tagline, :string
  end
end
