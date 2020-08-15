=begin
#madana-api

#<h1>API Quickstart Guide</h1>        <p>This documentation contains a Quickstart Guide, a few <a href=\"downloads.html\">sample clients</a>  for download and information about the available  <a href=\"resources.html\">endpoints</a>  and  <a href=\"data.html\">DataTypes</a>  </p>     <p>The <a target=\"_blank\" href=\"http://madana-explorer-staging.eu-central-1.elasticbeanstalk.com/login\">  MADANA Explorer</a> can be used to verify the interactions with the API</p>           <p>Internal use only. For more information visit <a href=\"https://www.madana.io\">www.madana.io</a></p>         <br> <br>

The version of the OpenAPI document: 0.4.12

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.3.0

=end

require 'spec_helper'
require 'json'

# Unit tests for   MadanaSampleclientRuby::CertificateServiceApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'CertificateServiceApi' do
  before do
    # run before each test
    @api_instance =   MadanaSampleclientRuby::CertificateServiceApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of CertificateServiceApi' do
    it 'should create an instance of CertificateServiceApi' do
      expect(@api_instance).to be_instance_of(  MadanaSampleclientRuby::CertificateServiceApi)
    end
  end

  # unit tests for authenticate_certificate
  # Issues certificates for logged-in users.
  # Issues certificates for logged-in users
  # @param [Hash] opts the optional parameters
  # @option opts [JsonMDNData] :body 
  # @return [JsonMDNCertificate]
  describe 'authenticate_certificate test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_certificate
  # @param [Hash] opts the optional parameters
  # @return [File]
  describe 'get_certificate test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_certificate_0
  # @param fingerprint 
  # @param [Hash] opts the optional parameters
  # @return [File]
  describe 'get_certificate_0 test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
