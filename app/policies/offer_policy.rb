class OfferPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end
  
  def index?
    true
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

  def show1?
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
