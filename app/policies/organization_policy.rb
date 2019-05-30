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
    true if record == @organization.user_id
  end

  def destroy?
    true if record == @organization.user
  end
end
