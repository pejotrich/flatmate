class OfferPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def create?
    true
  end

  def new?
    true
  end

  def update?
    record.user == user
  end

  def destroy?
    record.user == user
  end

  def show?
    #record.user == user
    true
  end
end
