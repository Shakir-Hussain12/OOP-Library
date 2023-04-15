require './base_decorator'

class Capitalize < BaseDecorator
  attr_accessor :caps

  def correct_name
    @caps = @name.correct_name
    @caps.capitalize
  end
end
