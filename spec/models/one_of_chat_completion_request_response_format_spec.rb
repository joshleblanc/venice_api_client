=begin
#Venice.ai API

#The Venice.ai API.

OpenAPI spec version: 20250521.233203

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.68
=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for VeniceClient::OneOfChatCompletionRequestResponseFormat
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'OneOfChatCompletionRequestResponseFormat' do
  before do
    # run before each test
    @instance = VeniceClient::OneOfChatCompletionRequestResponseFormat.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of OneOfChatCompletionRequestResponseFormat' do
    it 'should create an instance of OneOfChatCompletionRequestResponseFormat' do
      expect(@instance).to be_instance_of(VeniceClient::OneOfChatCompletionRequestResponseFormat)
    end
  end
end
