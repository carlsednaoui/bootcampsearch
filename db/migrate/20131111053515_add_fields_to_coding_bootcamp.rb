class AddFieldsToCodingBootcamp < ActiveRecord::Migration
  def change
    add_column :coding_bootcamps, :email, :string
    add_column :coding_bootcamps, :phone, :string
    add_column :coding_bootcamps, :address, :string
    add_column :coding_bootcamps, :city, :string
    add_column :coding_bootcamps, :country, :string
  end
end
