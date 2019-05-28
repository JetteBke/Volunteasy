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

  def edit?
    true if current_user == @organization.user
  end

  def destroy?
    true if current_user == @organization.user
  end
end
