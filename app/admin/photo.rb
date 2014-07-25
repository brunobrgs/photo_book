ActiveAdmin.register Photo do
  permit_params :image_file_name, :image_file_size, :image_content_type, :image,
    :event_id

  form do |f|
    f.inputs 'Foto' do
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
end
