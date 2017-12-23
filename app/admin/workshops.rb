# frozen_string_literal: true

ActiveAdmin.register Workshop do
  permit_params :name, :factory_id

  form do |f|
    f.inputs 'Detaild' do
      f.input :factory
      f.input :name
    end
    f.actions
  end
end
