=begin
#madana-api

#<h1>Using the madana-api</h1>        <p>This documentation contains a Quickstart Guide, relating client functionality and information about the available         endpoints and used datamodels.   </p>       <p> The madana-api and its implementations are still in heavy development. This means that there may be problems in our protocols, or there may be mistakes in our implementations. We take security vulnerabilities very seriously. If you discover a security issue, please bring it to our attention right away! If you find a vulnerability that may affect live deployments -- for example, by exposing a remote execution exploit -- please send your report privately to info@madana.io. Please DO NOT file a public issue. If the issue is a protocol weakness that cannot be immediately exploited or something not yet deployed, just discuss it openly   </p>   <br>   <p> Note: Not all functionality might be acessible without having accquired and api-license token. For more information visit <a href=\"https://www.madana.io\">www.madana.io</a> </p>       <br>

The version of the OpenAPI document: 0.4.14-master.16

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.3.0

=end

require 'spec_helper'
require 'json'

# Unit tests for   MadanaSampleclientRuby::SocialPlatformServiceApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'SocialPlatformServiceApi' do
  before do
    # run before each test
    @api_instance =   MadanaSampleclientRuby::SocialPlatformServiceApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of SocialPlatformServiceApi' do
    it 'should create an instance of SocialPlatformServiceApi' do
      expect(@api_instance).to be_instance_of(  MadanaSampleclientRuby::SocialPlatformServiceApi)
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
