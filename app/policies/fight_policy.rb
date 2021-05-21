class FightPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end
  def create?
    record.location.user != user
  end

  def destroy?
    record.user == user
  end
end
