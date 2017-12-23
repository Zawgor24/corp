# frozen_string_literal: true

class PrincipalPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.where(user.is_a?(Principal))
    end
  end

  def show?
    user_is_owner_of_account?
  end

  def edit?
    user_is_owner_of_account?
  end

  def update?
    user_is_owner_of_account?
  end

  private

  def user_is_owner_of_account?
    user.is_a? Principal
  end
end
