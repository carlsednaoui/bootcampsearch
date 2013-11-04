ActiveAdmin.register CodingBootcamp do
  form do |f|
     f.inputs 'Details' do
      f.input :name
      f.input :website
      f.input :description
     end
     f.actions
   end
end
