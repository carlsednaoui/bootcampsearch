class AddDisplayToCodingBootcamp < ActiveRecord::Migration
  def change
    add_column :coding_bootcamps, :display, :boolean, :default => true
  end
end
