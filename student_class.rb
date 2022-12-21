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
    classroom.student.push(self) unless classroom.student.includes?(self)
  end

end
