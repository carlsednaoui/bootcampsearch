ActiveAdmin.register Program do
  controller do
    def permitted_params
      params.permit(:program => [:name, :coding_bootcamp_id, :language_list, :location_list, :type_list])
    end
  end

  form do |f|
     f.inputs 'Details' do
      f.input :name
      f.input :coding_bootcamp_id
      f.input :language_list
      f.input :location_list
      f.input :type_list
     end
     f.actions
   end
end
