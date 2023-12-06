=begin
#TTS API

#This API gives access to Grammatek ehf advanced text to speech services. It provides endpoints to query all available voices and synthesize speech from given text for a particular voice. You can synthesize speech in several audio formats and different sample rates. Please authenticate with your client credentials via the /auth/v1 endpoint to receive a temporary access token for all API endpoints. This token is valid only for a certain time and you need to re-authenticate after it has expired. Please contact Grammatek via info@grammatek.com to receive your individual client credentials. 

The version of the OpenAPI document: v1.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 7.1.0

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for GTTS::AuthRequest
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe GTTS::AuthRequest do
  let(:instance) { GTTS::AuthRequest.new }

  describe 'test an instance of AuthRequest' do
    it 'should create an instance of AuthRequest' do
      # uncomment below to test the instance creation
      #expect(instance).to be_instance_of(GTTS::AuthRequest)
    end
  end

  describe 'test attribute "client_id"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  describe 'test attribute "client_secret"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
