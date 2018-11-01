# frozen_string_literal: true
require 'faker'

module Reference
  class Builder
    PATTERN = '[A-Z]{3}-\\d{3}'

    def initialize(number = 3)
      @number = number
    end

    def generate
      Faker::Base.regexify(/#{pattern_str}/)
    end

    private

    attr_reader :number

    def pattern_str
      Array.new(number).map { PATTERN }.join('-')
    end
  end
end