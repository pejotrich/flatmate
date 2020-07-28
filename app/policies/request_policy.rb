class RequestPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def create?
    record.user == user
    true
  end

  def new?
    record.user == user
    true
  end

  def update?
    record.user == user
    true
  end

  def destroy?
    record.user == user
    true
  end

  def show?
    record.user == user
    true
  end
end
