class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new
    if user.role? :admin
      can :manage, :all
    elsif user.role? :staff
      can :read, :all
      can :book, Course
      can :mine_booked, Enrollment
      can :destroy, Enrollment
      can :read, Enrollment
    elsif user.role? :client
      can [:show, :edit], User, user_id: user.id
      can :read, Course
      can :mine_booked, Enrollment
      can :book, Course
      can :read, :teacher
      can :destroy, Enrollment
      can :read, Enrollment
    else

    end
  end
end

