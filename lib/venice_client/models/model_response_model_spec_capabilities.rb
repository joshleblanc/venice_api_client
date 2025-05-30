=begin
#Venice.ai API

#The Venice.ai API.

OpenAPI spec version: 20250521.233203

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.68
=end

require 'date'

module VeniceClient
  # Text model specific capabilities.
  class ModelResponseModelSpecCapabilities
    # Is the LLM optimized for coding?
    attr_accessor :optimized_for_code

    # The quantization type of the running model.
    attr_accessor :quantization

    # Does the LLM model support function calling?
    attr_accessor :supports_function_calling

    # Does the model support reasoning with <thinking> blocks of output.
    attr_accessor :supports_reasoning

    # Does the LLM model support response schema? Only models that support function calling can support response_schema.
    attr_accessor :supports_response_schema

    # Does the LLM support vision?
    attr_accessor :supports_vision

    # Does the LLM model support web search?
    attr_accessor :supports_web_search

    # Does the LLM model support logprobs parameter?
    attr_accessor :supports_log_probs

    class EnumAttributeValidator
      attr_reader :datatype
      attr_reader :allowable_values

      def initialize(datatype, allowable_values)
        @allowable_values = allowable_values.map do |value|
          case datatype.to_s
          when /Integer/i
            value.to_i
          when /Float/i
            value.to_f
          else
            value
          end
        end
      end

      def valid?(value)
        !value || allowable_values.include?(value)
      end
    end

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'optimized_for_code' => :'optimizedForCode',
        :'quantization' => :'quantization',
        :'supports_function_calling' => :'supportsFunctionCalling',
        :'supports_reasoning' => :'supportsReasoning',
        :'supports_response_schema' => :'supportsResponseSchema',
        :'supports_vision' => :'supportsVision',
        :'supports_web_search' => :'supportsWebSearch',
        :'supports_log_probs' => :'supportsLogProbs'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'optimized_for_code' => :'Object',
        :'quantization' => :'Object',
        :'supports_function_calling' => :'Object',
        :'supports_reasoning' => :'Object',
        :'supports_response_schema' => :'Object',
        :'supports_vision' => :'Object',
        :'supports_web_search' => :'Object',
        :'supports_log_probs' => :'Object'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
      ])
    end
  
    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `VeniceClient::ModelResponseModelSpecCapabilities` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `VeniceClient::ModelResponseModelSpecCapabilities`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'optimized_for_code')
        self.optimized_for_code = attributes[:'optimized_for_code']
      end

      if attributes.key?(:'quantization')
        self.quantization = attributes[:'quantization']
      end

      if attributes.key?(:'supports_function_calling')
        self.supports_function_calling = attributes[:'supports_function_calling']
      end

      if attributes.key?(:'supports_reasoning')
        self.supports_reasoning = attributes[:'supports_reasoning']
      end

      if attributes.key?(:'supports_response_schema')
        self.supports_response_schema = attributes[:'supports_response_schema']
      end

      if attributes.key?(:'supports_vision')
        self.supports_vision = attributes[:'supports_vision']
      end

      if attributes.key?(:'supports_web_search')
        self.supports_web_search = attributes[:'supports_web_search']
      end

      if attributes.key?(:'supports_log_probs')
        self.supports_log_probs = attributes[:'supports_log_probs']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @optimized_for_code.nil?
        invalid_properties.push('invalid value for "optimized_for_code", optimized_for_code cannot be nil.')
      end

      if @quantization.nil?
        invalid_properties.push('invalid value for "quantization", quantization cannot be nil.')
      end

      if @supports_function_calling.nil?
        invalid_properties.push('invalid value for "supports_function_calling", supports_function_calling cannot be nil.')
      end

      if @supports_reasoning.nil?
        invalid_properties.push('invalid value for "supports_reasoning", supports_reasoning cannot be nil.')
      end

      if @supports_response_schema.nil?
        invalid_properties.push('invalid value for "supports_response_schema", supports_response_schema cannot be nil.')
      end

      if @supports_vision.nil?
        invalid_properties.push('invalid value for "supports_vision", supports_vision cannot be nil.')
      end

      if @supports_web_search.nil?
        invalid_properties.push('invalid value for "supports_web_search", supports_web_search cannot be nil.')
      end

      if @supports_log_probs.nil?
        invalid_properties.push('invalid value for "supports_log_probs", supports_log_probs cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @optimized_for_code.nil?
      return false if @quantization.nil?
      quantization_validator = EnumAttributeValidator.new('Object', ['fp8', 'fp16', 'not-available'])
      return false unless quantization_validator.valid?(@quantization)
      return false if @supports_function_calling.nil?
      return false if @supports_reasoning.nil?
      return false if @supports_response_schema.nil?
      return false if @supports_vision.nil?
      return false if @supports_web_search.nil?
      return false if @supports_log_probs.nil?
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] quantization Object to be assigned
    def quantization=(quantization)
      validator = EnumAttributeValidator.new('Object', ['fp8', 'fp16', 'not-available'])
      unless validator.valid?(quantization)
        fail ArgumentError, "invalid value for \"quantization\", must be one of #{validator.allowable_values}."
      end
      @quantization = quantization
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          optimized_for_code == o.optimized_for_code &&
          quantization == o.quantization &&
          supports_function_calling == o.supports_function_calling &&
          supports_reasoning == o.supports_reasoning &&
          supports_response_schema == o.supports_response_schema &&
          supports_vision == o.supports_vision &&
          supports_web_search == o.supports_web_search &&
          supports_log_probs == o.supports_log_probs
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [optimized_for_code, quantization, supports_function_calling, supports_reasoning, supports_response_schema, supports_vision, supports_web_search, supports_log_probs].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def self.build_from_hash(attributes)
      new.build_from_hash(attributes)
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.openapi_types.each_pair do |key, type|
        if type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        elsif attributes[self.class.attribute_map[key]].nil? && self.class.openapi_nullable.include?(key)
          self.send("#{key}=", nil)
        end
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :DateTime
        DateTime.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :Boolean
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        VeniceClient.const_get(type).build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        if value.nil?
          is_nullable = self.class.openapi_nullable.include?(attr)
          next if !is_nullable || (is_nullable && !instance_variable_defined?(:"@#{attr}"))
        end

        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map { |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end  end
end
