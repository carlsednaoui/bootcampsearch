ActiveAdmin.register Program do
  controller do
    def permitted_params
      params.permit(:program => [:name, :coding_bootcamp_id, :language_list, :location_list, :description, :length, :cost, :why_we_love])
    end
  end

  form do |f|
     f.inputs 'Details' do
      f.input :name
      f.input :coding_bootcamp_id
      f.input :language_list
      f.input :location_list
      f.input :description
      f.input :length
      f.input :cost
      f.input :why_we_love

     end
     f.actions
   end
end