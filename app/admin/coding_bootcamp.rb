ActiveAdmin.register CodingBootcamp do
  controller do
    def find_resource
      scoped_collection.friendly.find(params[:id])
    end

    def permitted_params
      params.permit(:coding_bootcamp => [:name, :website, :description])
    end
  end

  form do |f|
     f.inputs 'Details' do
      f.input :name
      f.input :website
      f.input :description
     end
     f.actions
   end
end
