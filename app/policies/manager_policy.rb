# frozen_string_literal: true

class ManagerPolicy < ApplicationPolicy
  WORKERS = [Manager, Principal].freeze

  class Scope < Scope
    def resolve
      scope
    end
  end

  def show?
    user_is_owner_or_principal?
  end

  def edit?
    user_is_owner_or_parent?
  end

  def destroy?
    user_is_owner_or_parent?
  end

  def new?
    user.is_a? Principal
  end

  private

  def user_is_owner_or_principal?
    WORKERS.include?(user.class)
  end
end
