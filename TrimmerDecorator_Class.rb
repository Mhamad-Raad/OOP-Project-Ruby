require_relative 'decorator_class'

class TrimmerDecorator < Decorator

  def initialize(person)
    @person = person;
  end

  def correct_name
    value = super

    if value.length > 10
      value = value[0..9]
    end
    return value
  end
end
