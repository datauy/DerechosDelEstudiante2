ActiveAdmin.register Complain do
  actions :all, :except => [:new, :edit]
  permit_params :list, :of, :attributes, :on, :model

  index do
    selectable_column
    id_column
    column :name
    column :email
    column :message
    column :created_at
    actions
  end

  filter :name
  filter :email
  filter :message
  filter :created_at

end
