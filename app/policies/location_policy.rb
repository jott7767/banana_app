class LocationPolicy < ApplicationPolicy
  class Scope
    attr_reader :user, :scope

    def initialize(user, scope)
      @user  = user
      @scope = scope
    end

    def resolve
      return scope.all if user.admin?

      scope.where(merchant_id: user.merchant_id)
    end

  end

  def update?
    return true if user.admin?

    record.merchant_id == user.merchant_id
  end
end
