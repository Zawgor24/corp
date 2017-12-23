# frozen_string_literal: true

ActiveAdmin.register Manager do
  permit_params :email, :password, :name, :age, :nation, :sex, :avatar, :salary, :work_rating,
    :parentable_type, :parentable_id

  form do |f|
    f.inputs 'Type' do
      f.input :parentable, collection: Workshop.all
    end
    f.inputs 'Basic Details' do
      f.input :email
    end
    f.actions
  end

  controller do
    def create
      params[:manager][:parentable_type] = Workshop.name
      password = Faker::Internet.password(8)
      params[:manager][:password] = password
      WorkerMailer.sample_email(params[:manager][:email], password).deliver_now

      super
    end
  end
end
