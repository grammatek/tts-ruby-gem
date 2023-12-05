=begin
#TTS API

#This API gives access to Grammatek ehf advanced text to speech services. It provides endpoints to query all available voices and synthesize speech from given text for a particular voice. You can synthesize speech in several audio formats and different sample rates. Please authenticate with your client credentials via the /auth/v1 endpoint to receive a temporary access token for all API endpoints. This token is valid only for a certain time and you need to re-authenticate after it has expired. Please contact Grammatek via info@grammatek.com to receive your individual client credentials. 

The version of the OpenAPI document: v1.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 7.1.0

=end

require 'date'
require 'time'

module GTTS
  class SynthesizeSpeechRequest
    # Specify which engine to use
    attr_accessor :engine

    # The language identification tag (ISO 639 code for the language name-ISO 3166 country code) for specifying the synthesis language. If left empty, language detection is done by the API. 
    attr_accessor :language_code

    # List of one or more pronunciation lexicon names you want the service to apply during synthesis. Lexicons are applied only if the language of the lexicon is the same as the language of the voice. For information about storing lexicons, see PutLexicon. UNIMPLEMENTED 
    attr_accessor :lexicon_names

    # The format in which the returned output will be encoded. For audio stream, this will be mp3, ogg_vorbis, or pcm. For speech marks, this will be json. 
    attr_accessor :output_format

    # The audio frequency specified in Hz. Output formats `mp3` and `ogg_vorbis` support all sample rates. 
    attr_accessor :sample_rate

    # The type of speech marks returned for the input text.  Only word level speech marks are supported, which contain the start time of each word and their start and end byte offsets in the input text. E.g.      {      \"Engine\": \"standard\",      \"LanguageCode\": \"is-IS\",      \"OutputFormat\": \"json\",      \"SpeechMarkTypes\": [\"word\"],      \"Text\": \" Góðan, dag. Hvað heitir þú? Kvöld-Úlfur.\",      \"VoiceId\": \"Alfur\"     }  might return      {\"time\": 54, \"type\": \"word\", \"start\": 1, \"end\": 9, \"value\": \"Góðan,\"}     {\"time\": 44, \"type\": \"word\", \"start\": 10, \"end\": 14, \"value\": \"dag.\"}     {\"time\": 26, \"type\": \"word\", \"start\": 15, \"end\": 20, \"value\": \"Hvað\"}     {\"time\": 33, \"type\": \"word\", \"start\": 21, \"end\": 27, \"value\": \"heitir\"}     {\"time\": 19, \"type\": \"word\", \"start\": 28, \"end\": 33, \"value\": \"þú?\"}     {\"time\": 88, \"type\": \"word\", \"start\": 34, \"end\": 48, \"value\": \"Kvöld-Úlfur.\"} 
    attr_accessor :speech_mark_types

    # Input text to synthesize. 
    attr_accessor :text

    # Specifies whether the input text is plain text or SSML. The default value is plain text.   Currently the SSML support is restricted to just `<phoneme>` tags, e.g:<br>`<speak>Ég er <phoneme alphabet='x-sampa' ph='...'>gervimaður</phoneme></speak>`  Currently only plain text requests are normalized before synthesis.
    attr_accessor :text_type

    # Voice ID to use for the synthesis
    attr_accessor :voice_id

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
        :'engine' => :'Engine',
        :'language_code' => :'LanguageCode',
        :'lexicon_names' => :'LexiconNames',
        :'output_format' => :'OutputFormat',
        :'sample_rate' => :'SampleRate',
        :'speech_mark_types' => :'SpeechMarkTypes',
        :'text' => :'Text',
        :'text_type' => :'TextType',
        :'voice_id' => :'VoiceId'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'engine' => :'String',
        :'language_code' => :'String',
        :'lexicon_names' => :'Array<String>',
        :'output_format' => :'String',
        :'sample_rate' => :'String',
        :'speech_mark_types' => :'Array<String>',
        :'text' => :'String',
        :'text_type' => :'String',
        :'voice_id' => :'String'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `GTTS::SynthesizeSpeechRequest` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `GTTS::SynthesizeSpeechRequest`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'engine')
        self.engine = attributes[:'engine']
      end

      if attributes.key?(:'language_code')
        self.language_code = attributes[:'language_code']
      end

      if attributes.key?(:'lexicon_names')
        if (value = attributes[:'lexicon_names']).is_a?(Array)
          self.lexicon_names = value
        end
      end

      if attributes.key?(:'output_format')
        self.output_format = attributes[:'output_format']
      else
        self.output_format = nil
      end

      if attributes.key?(:'sample_rate')
        self.sample_rate = attributes[:'sample_rate']
      end

      if attributes.key?(:'speech_mark_types')
        if (value = attributes[:'speech_mark_types']).is_a?(Array)
          self.speech_mark_types = value
        end
      end

      if attributes.key?(:'text')
        self.text = attributes[:'text']
      else
        self.text = nil
      end

      if attributes.key?(:'text_type')
        self.text_type = attributes[:'text_type']
      end

      if attributes.key?(:'voice_id')
        self.voice_id = attributes[:'voice_id']
      else
        self.voice_id = nil
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = Array.new
      if @output_format.nil?
        invalid_properties.push('invalid value for "output_format", output_format cannot be nil.')
      end

      if @text.nil?
        invalid_properties.push('invalid value for "text", text cannot be nil.')
      end

      if @text.to_s.length > 3000
        invalid_properties.push('invalid value for "text", the character length must be smaller than or equal to 3000.')
      end

      if @text.to_s.length < 1
        invalid_properties.push('invalid value for "text", the character length must be great than or equal to 1.')
      end

      if @voice_id.nil?
        invalid_properties.push('invalid value for "voice_id", voice_id cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      engine_validator = EnumAttributeValidator.new('String', ["standard"])
      return false unless engine_validator.valid?(@engine)
      return false if @output_format.nil?
      output_format_validator = EnumAttributeValidator.new('String', ["json", "pcm", "mp3", "ogg_vorbis"])
      return false unless output_format_validator.valid?(@output_format)
      sample_rate_validator = EnumAttributeValidator.new('String', ["8000", "16000", "22050"])
      return false unless sample_rate_validator.valid?(@sample_rate)
      return false if @text.nil?
      return false if @text.to_s.length > 3000
      return false if @text.to_s.length < 1
      text_type_validator = EnumAttributeValidator.new('String', ["text", "ssml"])
      return false unless text_type_validator.valid?(@text_type)
      return false if @voice_id.nil?
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] engine Object to be assigned
    def engine=(engine)
      validator = EnumAttributeValidator.new('String', ["standard"])
      unless validator.valid?(engine)
        fail ArgumentError, "invalid value for \"engine\", must be one of #{validator.allowable_values}."
      end
      @engine = engine
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] output_format Object to be assigned
    def output_format=(output_format)
      validator = EnumAttributeValidator.new('String', ["json", "pcm", "mp3", "ogg_vorbis"])
      unless validator.valid?(output_format)
        fail ArgumentError, "invalid value for \"output_format\", must be one of #{validator.allowable_values}."
      end
      @output_format = output_format
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] sample_rate Object to be assigned
    def sample_rate=(sample_rate)
      validator = EnumAttributeValidator.new('String', ["8000", "16000", "22050"])
      unless validator.valid?(sample_rate)
        fail ArgumentError, "invalid value for \"sample_rate\", must be one of #{validator.allowable_values}."
      end
      @sample_rate = sample_rate
    end

    # Custom attribute writer method with validation
    # @param [Object] text Value to be assigned
    def text=(text)
      if text.nil?
        fail ArgumentError, 'text cannot be nil'
      end

      if text.to_s.length > 3000
        fail ArgumentError, 'invalid value for "text", the character length must be smaller than or equal to 3000.'
      end

      if text.to_s.length < 1
        fail ArgumentError, 'invalid value for "text", the character length must be great than or equal to 1.'
      end

      @text = text
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] text_type Object to be assigned
    def text_type=(text_type)
      validator = EnumAttributeValidator.new('String', ["text", "ssml"])
      unless validator.valid?(text_type)
        fail ArgumentError, "invalid value for \"text_type\", must be one of #{validator.allowable_values}."
      end
      @text_type = text_type
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          engine == o.engine &&
          language_code == o.language_code &&
          lexicon_names == o.lexicon_names &&
          output_format == o.output_format &&
          sample_rate == o.sample_rate &&
          speech_mark_types == o.speech_mark_types &&
          text == o.text &&
          text_type == o.text_type &&
          voice_id == o.voice_id
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [engine, language_code, lexicon_names, output_format, sample_rate, speech_mark_types, text, text_type, voice_id].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def self.build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      attributes = attributes.transform_keys(&:to_sym)
      transformed_hash = {}
      openapi_types.each_pair do |key, type|
        if attributes.key?(attribute_map[key]) && attributes[attribute_map[key]].nil?
          transformed_hash["#{key}"] = nil
        elsif type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[attribute_map[key]].is_a?(Array)
            transformed_hash["#{key}"] = attributes[attribute_map[key]].map { |v| _deserialize($1, v) }
          end
        elsif !attributes[attribute_map[key]].nil?
          transformed_hash["#{key}"] = _deserialize(type, attributes[attribute_map[key]])
        end
      end
      new(transformed_hash)
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def self._deserialize(type, value)
      case type.to_sym
      when :Time
        Time.parse(value)
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
        # models (e.g. Pet) or oneOf
        klass = GTTS.const_get(type)
        klass.respond_to?(:openapi_any_of) || klass.respond_to?(:openapi_one_of) ? klass.build(value) : klass.build_from_hash(value)
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
    end

  end

end
