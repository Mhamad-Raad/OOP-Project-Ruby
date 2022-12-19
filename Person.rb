class Person 
  attr_accessor :name, :age, :id

  def initialize(age, name='Unkown',  parent_permission=true)
    @name = name
    @age = age
    @parent_permission = parent_permission
  end


  def can_use_services?
    return true if is_of_age? || @parent_permission

  def name=(name)
    @name = name
  end

  def name
    @name
  end

  def age=(age)
    @age = age
  end

  def age
    @age
  end

  def id
    @id
  end

  private
    def is_of_age?
      return @age >= 18
    end
  end
end