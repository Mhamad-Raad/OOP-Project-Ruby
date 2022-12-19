class Person
  attr_accessor :name, :age, :id

  def initialize(age, name: 'Unkown', parent_permission: true)
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
end
