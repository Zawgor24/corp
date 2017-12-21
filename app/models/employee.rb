class Employee < Worker
  belongs_to :parentable, polymorphic: true, required: false

  mount_uploader :avatar, AvatarUploader
end
