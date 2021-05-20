class LocationPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.where(user: user)
    end
  end

  # returns a boolean
  def show?
    true
  end

  def new?
    show?
  end

  def create?
    show?
  end

  def edit?
    # I can edit only if I am the owner or if i am admin
    record.user == user || user.admin # true / false
  end

  def update?
    edit?
  end

  def destroy?
    edit?
  end
end
