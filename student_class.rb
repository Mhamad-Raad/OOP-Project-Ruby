require_relative 'person_class'

class Student < Person
  def initialize(age, name: 'Unknown', parent_permission: true, classroom: 'None')
    super(age, name, parent_permission)
    @classroom = classroom
  end

  def play_hooky
    '¯(ツ)/¯'
  end

  def classroom=(cr)
    @classroom = cr
    classroom.students.push(self) unless classroom.students.includes?(self)
  end

end
