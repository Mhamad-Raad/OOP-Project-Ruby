require_relative 'decorator_class'

class CapitalizeDecorator < Decorator

  def correct_name
    @nameable_obj.correct_name.capitalize
  end
end
