# frozen_string_literal: true

ActiveAdmin.register Employee do
  permit_params :email, :password, :name, :age, :nation, :sex, :avatar, :salary, :work_rating,
    :parentable_type, :parentable_id

  form do |f|
    f.inputs 'Type' do
      f.input :parentable, collection: Taskmaster.all
    end
    f.inputs 'Basic Details' do
      f.input :email
    end
    f.actions
  end

  controller do
    def create
      params[:employee][:parentable_type] = Taskmaster.name
      password = Faker::Internet.password(8)
      params[:employee][:password] = password
      WorkerMailer.sample_email(params[:employee][:email], password).deliver_now

      super
    end
  end
end
