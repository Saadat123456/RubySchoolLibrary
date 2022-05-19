require 'nemeable'

# Parent class for Trimmer and Capitalize decorators
class Base < nemeable
  def initialize(nameable)
    @nameable = nameable
  end

  def correct_name
    @nameable.correct_name
  end
end