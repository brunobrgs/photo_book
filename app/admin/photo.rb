ActiveAdmin.register Photo do
  permit_params :image_file_name, :image_file_size, :image_content_type, :image
 
  form do |f|
    f.inputs "Project Details" do
      f.input :event
      f.input :image, as: :file
      # Will preview the image when the object is edited
    end
    f.actions
  end
 
  show do |ad|
    attributes_table do
      row :event
      row :image do
        image_tag(ad.image.url(:thumb))
      end
      # Will display the image on show object page
    end
  end

  
  # See permitted parameters documentation:
  # https://github.com/gregbell/active_admin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # permit_params :list, :of, :attributes, :on, :model
  #
  # or
  #
  # permit_params do
  #  permitted = [:permitted, :attributes]
  #  permitted << :other if resource.something?
  #  permitted
  # end
  
end
