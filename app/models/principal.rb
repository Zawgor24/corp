class Principal < Worker
  extend Enumerize
  
  enumerize :sex, in: [:male, :female]
  
  belongs_to :parentable, polymorphic: true

  mount_uploader :avatar, AvatarUploader
end
