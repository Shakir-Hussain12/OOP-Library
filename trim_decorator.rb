require './base_decorator'

class Trim < BaseDecorator
  attr_accessor :trim

  def correct_name
    @trim = @name.correct_name
    @trim.slice(0, 10)
  end
end
