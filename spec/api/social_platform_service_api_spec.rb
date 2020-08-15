=begin
#madana-api

#<h1>API Quickstart Guide</h1>        <p>This documentation contains a Quickstart Guide, a few <a href=\"downloads.html\">sample clients</a>  for download and information about the available  <a href=\"resources.html\">endpoints</a>  and  <a href=\"data.html\">DataTypes</a>  </p>     <p>The <a target=\"_blank\" href=\"http://madana-explorer-staging.eu-central-1.elasticbeanstalk.com/login\">  MADANA Explorer</a> can be used to verify the interactions with the API</p>           <p>Internal use only. For more information visit <a href=\"https://www.madana.io\">www.madana.io</a></p>         <br> <br>

The version of the OpenAPI document: 0.4.12

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.3.0

=end

require 'spec_helper'
require 'json'

# Unit tests for OpenapiClient::SocialPlatformServiceApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'SocialPlatformServiceApi' do
  before do
    # run before each test
    @api_instance = OpenapiClient::SocialPlatformServiceApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of SocialPlatformServiceApi' do
    it 'should create an instance of SocialPlatformServiceApi' do
      expect(@api_instance).to be_instance_of(OpenapiClient::SocialPlatformServiceApi)
    end
  end

  # unit tests for get_platforms
  # Used to Handle Incoming Webhooks from Facebook.
  # Used to Handle Incoming Webhooks from Facebook
  # @param [Hash] opts the optional parameters
  # @option opts [String] :body 
  # @return [File]
  describe 'get_platforms test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for listen_twitter_webhook
  # Used to Handle Incoming Webhooks from Facebook.
  # Used to Handle Incoming Webhooks from Facebook
  # @param [Hash] opts the optional parameters
  # @option opts [String] :body 
  # @return [File]
  describe 'listen_twitter_webhook test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for register_twitter_webhook
  # Used to Handle Incoming Webhooks from Twitter.
  # Used to Handle Incoming Webhooks from Twitter
  # @param [Hash] opts the optional parameters
  # @option opts [String] :crc_token 
  # @return [File]
  describe 'register_twitter_webhook test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
