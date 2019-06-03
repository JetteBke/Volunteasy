class ReviewPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  # TODO:
  def new?
    true
  end

  def create?
    true
  end
end
