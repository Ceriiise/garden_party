class ProfilePolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def show?
    record.user == current_user
  end

  def update?
    true
  end

  def edit?
    true
  end
end
