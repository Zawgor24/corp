# frozen_string_literal: true

class Workshop < ApplicationRecord
  has_many :taskmasters, as: :parentable, dependent: :destroy

  has_one :manager, as: :parentable, dependent: :destroy

  belongs_to :factory

  PARENTABLE_TYPES = Workshop.all
end
