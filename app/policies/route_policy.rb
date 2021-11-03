class RoutePolicy < ApplicationPolicy
 # class Scope < Scope
  #  def resolve
   #   scope.all
    #end
  #end
  def index?
    record.user == user.rol
  end
end
