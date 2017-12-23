# frozen_string_literal: true

ActiveAdmin.register Factory do
  permit_params :name, :location, :avatar, :corporation_id

  form do |f|
    f.inputs 'Detaild' do
      f.input :corporation
      f.input :name
      f.input :location
      f.input :avatar
    end
    f.actions
  end
end
