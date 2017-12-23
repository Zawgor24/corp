# frozen_string_literal: true

class Principal < Worker
  extend Enumerize

  enumerize :sex, in: %i[male female]

  belongs_to :parentable, polymorphic: true

  mount_uploader :avatar, AvatarUploader
end
