class OfferPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def create?
    true
  end

  def decline?
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

  def accept?
    true
  end

  def show?
    #record.user == user
    true
  end
end
