class Ability
  include CanCan::Ability

  def initialize(user)
    def initialize(user)
	 user ||= User.new
	 if user.role == "admin"
	   can :manage, :all
	 elsif user.role == "team_member"
	   alias_action :create, :read, :update, :to => :cru
	   can :cru,  :all
	  end
  end
end
