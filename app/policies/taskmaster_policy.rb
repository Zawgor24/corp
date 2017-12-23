# frozen_string_literal: true

class TaskmasterPolicy < ApplicationPolicy
  WORKERS = [Taskmaster, Manager, Principal].freeze

  class Scope < Scope
    def resolve
      scope
    end
  end

  def index?
    user_is_owner_or_parent?
  end

  def show?
    user_is_owner_or_parent?
  end

  def new?
    manager_or_principal?
  end

  def create?
    manager_or_principal?
  end

  def edit?
    manager_or_principal?
  end

  def update?
    manager_or_principal?
  end

  def destroy?
    user_is_owner_or_parent?
  end

  private

  def manager_or_principal?
    user.is_a?(Manager) || user.is_a?(Principal)
  end

  def user_is_owner_or_parent?
    WORKERS.include?(user.class)
  end
end
