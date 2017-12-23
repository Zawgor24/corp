# frozen_string_literal: true

ActiveAdmin.register Item do
  permit_params :item_type, :avatar, :model, :price, corporation_ids: []

  form do |f|
    f.inputs 'Details' do
      f.input :corporations, as: :select, input_html: { multiple: true }
      f.input :price
      f.input :item_type
      f.input :avatar
      f.input :model
    end
    f.actions
  end
end
