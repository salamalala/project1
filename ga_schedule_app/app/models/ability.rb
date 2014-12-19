class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new
    if user.role? :admin
      can :manage, :all
    elsif user.role? :staff
      can :read, :all
      can :book, Course
    elsif user.role? :client
      can [:show, :edit], User, user_id: user.id
      can :read, Course
      can :book, Course
      can :read, :teacher
    else

    end
  end
end

