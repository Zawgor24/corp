ActiveAdmin.register Principal do
  permit_params :name, :age, :nation, :sex, :avatar, :salary, :work_rating, :factory_id

  form do |f|
    f.inputs 'info' do 
      f.input :sex
    end
    f.actions
  end
end
