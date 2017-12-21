class Corporation < ApplicationRecord
  has_many :factories

  has_and_belongs_to_many :items, class_name: 'Item', join_table: 'corporations_items'

  mount_uploader :avatar, AvatarUploader
end
