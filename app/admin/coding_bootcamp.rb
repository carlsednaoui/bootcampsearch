ActiveAdmin.register CodingBootcamp do
  controller do
    def find_resource
      scoped_collection.friendly.find(params[:id])
    end

    def permitted_params
      params.permit(:coding_bootcamp => [:name, :website, :description, :tagline, :display, :email, :phone, :address, :city, :country])
    end
  end

  form do |f|
     f.inputs 'Details' do
      f.input :name
      f.input :website
      f.input :description
      f.input :tagline
      f.input :display
      f.input :email
      f.input :phone
      f.input :address
      f.input :city
      f.input :country, as: 'string'
     end
     f.actions
   end
end
