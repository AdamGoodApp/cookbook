class Ability
  include CanCan::Ability

  def initialize(user)
   user ||= User.new
   case
    when user.role?(:admin)
    can :manage, :all

    when user.role?(:employee)
    can :read, :all

    else
        can :manage, User
        can :read, :all
    end
  end
end
