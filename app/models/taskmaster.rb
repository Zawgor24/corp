class Taskmaster < Worker
  has_many :employees, as: :parentable

  belongs_to :parentable, polymorphic: true

  mount_uploader :avatar, AvatarUploader
end
