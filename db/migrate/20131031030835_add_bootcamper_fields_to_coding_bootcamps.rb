class AddBootcamperFieldsToCodingBootcamps < ActiveRecord::Migration
  def change
    add_column :coding_bootcamps, :bootcamp_type, :string
    add_column :coding_bootcamps, :focus, :string
    add_column :coding_bootcamps, :duration, :string
    add_column :coding_bootcamps, :class_size, :string
    add_column :coding_bootcamps, :sessions_per_year, :string
    add_column :coding_bootcamps, :weekly_time_commitment, :string
    add_column :coding_bootcamps, :min_skill, :string
    add_column :coding_bootcamps, :placement_test, :string
    add_column :coding_bootcamps, :prep_work, :string
    add_column :coding_bootcamps, :interview, :string
    add_column :coding_bootcamps, :cost, :string
    add_column :coding_bootcamps, :refund, :string
    add_column :coding_bootcamps, :financing, :string
    add_column :coding_bootcamps, :deposit, :string
    add_column :coding_bootcamps, :payment_plan, :string
    add_column :coding_bootcamps, :job_assistance, :string
    add_column :coding_bootcamps, :housing, :string
    add_column :coding_bootcamps, :visa, :string
    add_column :coding_bootcamps, :email, :string
    add_column :coding_bootcamps, :phone, :string
    add_column :coding_bootcamps, :address, :string
    add_column :coding_bootcamps, :city, :string
    add_column :coding_bootcamps, :country, :string
    add_column :coding_bootcamps, :website, :string
  end
end
