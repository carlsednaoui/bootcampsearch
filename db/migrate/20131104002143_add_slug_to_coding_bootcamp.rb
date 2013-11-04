class AddSlugToCodingBootcamp < ActiveRecord::Migration
  def change
    add_column :coding_bootcamps, :slug, :string
    add_index :coding_bootcamps, :slug
  end
end
