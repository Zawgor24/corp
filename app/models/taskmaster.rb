# frozen_string_literal: true

class Taskmaster < Worker
  has_many :employees, as: :parentable, dependent: :destroy

  belongs_to :parentable, polymorphic: true

  mount_uploader :avatar, AvatarUploader

  # def limit_employees_for_taskmanager
  #   if Taskmaster.employees.count > 10
  #     errors.add()
  #   end
  # end
end
