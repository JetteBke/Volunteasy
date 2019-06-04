class OrganizationPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def show?
    true
  end

  def create?
    true
  end

  def new?
    true
  end

  def edit?
    true
  end

  def update?
    true
  end

  def destroy?
    record.user == user
  end
end
