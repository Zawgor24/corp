# frozen_string_literal: true

class Employee < Worker
  belongs_to :parentable, polymorphic: true, required: false

  mount_uploader :avatar, AvatarUploader

  before_create :validate_count_of_employees

  def validate_count_of_employees
    # byebug
    if parentable.employees.count >= 10
      errors.add(:parentable, "can't has more then 10 employees")
      parentable.errors[:parentable]
    end
  end
end
