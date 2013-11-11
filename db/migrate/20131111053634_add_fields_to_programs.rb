class AddFieldsToPrograms < ActiveRecord::Migration
  def change
    add_column :programs, :description, :string
    add_column :programs, :length, :string
    add_column :programs, :cost, :string
    add_column :programs, :refund, :string
    add_column :programs, :why_we_love, :string
  end
end
