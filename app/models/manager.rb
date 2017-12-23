# frozen_string_literal: true

class Manager < Worker
  belongs_to :parentable, polymorphic: true

  mount_uploader :avatar, AvatarUploader
end
