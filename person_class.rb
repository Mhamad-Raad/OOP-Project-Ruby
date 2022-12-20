require_relative 'nameable_class'
class Person < Nameable
  attr_accessor :name, :age, :id

  def initialize(age, name: 'Unkown', parent_permission: true)
    @id = Random.rand(1..1000)
    @name = name
    @age = age
    @parent_permission = parent_permission
  end

  def can_use_services?
    return true if is_of_age || @parent_permission
  end

  def self.adult?
    @age >= 18
  end

  def correct_name
    @name
  end
end
