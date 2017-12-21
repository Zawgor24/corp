class Workshop < ApplicationRecord
  has_many :taskmasters, as: :parentable

  has_one :manager, as: :parentable
  
  belongs_to :factory
end
