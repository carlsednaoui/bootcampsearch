ActiveAdmin.register CodingBootcamp do
  form do |f|
     f.inputs 'Details' do
      f.input :name
      f.input :bootcamp_type
      f.input :focus
      f.input :duration
      f.input :class_size
      f.input :sessions_per_year
      f.input :weekly_time_commitment
      f.input :min_skill
      f.input :placement_test
      f.input :prep_work
      f.input :interview
      f.input :cost
      f.input :refund
      f.input :financing
      f.input :deposit
      f.input :payment_plan
      f.input :job_assistance
      f.input :housing
      f.input :visa
      f.input :email
      f.input :phone
      f.input :address
      f.input :city
      f.input :country, :as => :string
      f.input :website
     end
     f.actions
   end
end
