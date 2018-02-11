class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new

    alias_action :create, :update, :destroy, to: :change

    if user.has_role?(:admin)
      can :manage, :all
    end

    can :change, Blog, user_id: user.id
    can :read, Blog
  end
end
