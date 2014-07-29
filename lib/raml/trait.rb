module Raml
  class Trait < Method
    attr_accessor :usage
    
    def validate
      raise InvalidProperty, 'description property mus be a string' unless description.nil? or description.is_a? String
      validate_protocols
    end
  end
end