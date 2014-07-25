ActiveAdmin.register Event do
  permit_params :name, :description, :date, :category_id
end
