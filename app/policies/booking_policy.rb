class BookingPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def approve?
    true
  end

  def reject?
    true
  end
end
