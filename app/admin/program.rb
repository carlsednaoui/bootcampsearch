ActiveAdmin.register Program do
  controller do
    def permitted_params
      params.permit(:program => [:name, :coding_bootcamp_id, :focus])
    end
  end

  form do |f|
     f.inputs 'Details' do
      f.input :name
      f.input :coding_bootcamp_id
      f.input :focus
     end
     f.actions
   end
end
