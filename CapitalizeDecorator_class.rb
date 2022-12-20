require_relative 'decorator_class'

class CapitalizeDecorator < Decorator

  def initialize(person)
    @person = person;
  end

  def correct_name
    value = super
    return value.capitalize
  end
end
