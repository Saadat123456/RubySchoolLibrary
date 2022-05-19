require 'base_decorator'

# Parent class for Trimmer and Capitalize decorators
class TrimmerDecorator < Base
  def initialize(nameable)
    super(nameable)
  end

  def correct_name
    @nameable.correct_name.capitalize()
  end
end