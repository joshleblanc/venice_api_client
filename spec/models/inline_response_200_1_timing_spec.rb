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

# Unit tests for VeniceClient::InlineResponse2001Timing
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'InlineResponse2001Timing' do
  before do
    # run before each test
    @instance = VeniceClient::InlineResponse2001Timing.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of InlineResponse2001Timing' do
    it 'should create an instance of InlineResponse2001Timing' do
      expect(@instance).to be_instance_of(VeniceClient::InlineResponse2001Timing)
    end
  end
  describe 'test attribute "inference_duration"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "inference_preprocessing_time"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "inference_queue_time"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "total"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
