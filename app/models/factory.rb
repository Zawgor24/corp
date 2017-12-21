class Factory < ApplicationRecord
  belongs_to :corporation

  has_many :details
  has_many :workshops

  has_one  :principal, as: :parentable

  mount_uploader :avatar, AvatarUploader
end
