ActiveAdmin.register Event do
  permit_params :name, :description, :date
end
