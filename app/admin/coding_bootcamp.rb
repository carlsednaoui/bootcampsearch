ActiveAdmin.register CodingBootcamp do
  controller do
    def find_resource
      scoped_collection.friendly.find(params[:id])
    end

    def permitted_params
      params.permit(:coding_bootcamp => [:name, :website, :description, :tagline, :display, :email, :phone, :address, :city, :country, programs_attributes: [:id, :coding_bootcamp_id, :name, :description, :length, :cost, :why_we_love, :language_list, :location_list]])
    end
  end

  show do
    attributes_table do
      row :id
      row :name
      row :description
      row :website
      row :created_at
      row :updated_at
      row :slug
      row :tagline
      row :display
      row :email
      row :phone
      row :address
      row :city
      row :country
    end

    panel "Programs" do
      table_for coding_bootcamp.programs do
        column "name" do |program|
          program.name
        end
      end
    end

    active_admin_comments
  end

  form do |f|
     f.inputs 'Details' do
      f.input :id, readonly: true
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

     f.inputs '** Programs' do
      f.has_many :programs do |ff|
        ff.input :name
        ff.input :description
        ff.input :length
        ff.input :cost
        ff.input :why_we_love
        ff.input :language_list
        ff.input :location_list
      end
     end
     
     f.actions
   end
end
