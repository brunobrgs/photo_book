ActiveAdmin.register Settings do
  permit_params :value

  actions :index, :update, :edit
  config.filters = false
  config.batch_actions = false
  config.sort_order = 'id DESC'

  index do
    column :to_s
    column :value
    actions
  end

  form do |f|
    f.inputs settings.to_s do
      f.input :value
    end
    f.actions
  end
end
