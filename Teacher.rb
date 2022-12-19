require 'Person.rb'

class Teacher < Person

  def initialize(age, name = 'Unknown', parent_permission = true, specialization = 'None')
    super(age, name, parent_permission)
    @specialization = specialization
  end

  def can_use_services?
    return true
  end

  def teach_stuff
    "Everything"
  end


end
