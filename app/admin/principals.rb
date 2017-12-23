# frozen_string_literal: true

ActiveAdmin.register Principal do
  permit_params :email, :password, :name, :age, :nation, :sex, :avatar, :salary, :work_rating,
    :parentable_type, :parentable_id

  form do |f|
    f.inputs 'Type' do
      f.input :parentable, collection: Factory.all
    end
    f.inputs 'Basic Details' do
      f.input :email
    end
    f.actions
  end

  controller do
    def create
      params[:principal][:parentable_type] = Factory.name
      password = Faker::Internet.password(8)
      params[:principal][:password] = password
      WorkerMailer.sample_email(params[:principal][:email], password).deliver_now

      super
    end
  end
end
