class AddFieldsToPrograms < ActiveRecord::Migration
  def change
    add_column :programs, :description, :text
    add_column :programs, :length, :string
    add_column :programs, :cost, :string
    add_column :programs, :why_we_love, :text
  end
end
