# frozen_string_literal: true

ActiveAdmin.register Detail do
  permit_params :name, :detail_type, :serial_number, :price, :factory_id

  form do |f|
    f.inputs 'Detaild' do
      f.input :factory
      f.input :name
      f.input :detail_type
      f.input :serial_number
      f.input :price
    end
    f.actions
  end
end
