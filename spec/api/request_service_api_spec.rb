=begin
#madana-api

#<h1>Using the madana-api</h1>        <p>This documentation contains a Quickstart Guide, relating client functionality and information about the available         endpoints and used datamodels.   </p>       <p> The madana-api and its implementations are still in heavy development. This means that there may be problems in our protocols, or there may be mistakes in our implementations. We take security vulnerabilities very seriously. If you discover a security issue, please bring it to our attention right away! If you find a vulnerability that may affect live deployments -- for example, by exposing a remote execution exploit -- please send your report privately to info@madana.io. Please DO NOT file a public issue. If the issue is a protocol weakness that cannot be immediately exploited or something not yet deployed, just discuss it openly   </p>   <br>   <p> Note: Not all functionality might be acessible without having accquired and api-license token. For more information visit <a href=\"https://www.madana.io\">www.madana.io</a> </p>       <br>

The version of the OpenAPI document: 0.4.14-master.16

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.3.0

=end

require 'spec_helper'
require 'json'

# Unit tests for   MadanaSampleclientRuby::RequestServiceApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'RequestServiceApi' do
  before do
    # run before each test
    @api_instance =   MadanaSampleclientRuby::RequestServiceApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of RequestServiceApi' do
    it 'should create an instance of RequestServiceApi' do
      expect(@api_instance).to be_instance_of(  MadanaSampleclientRuby::RequestServiceApi)
    end
  end

  # unit tests for add_data
  # Is used to upload and park the data till the AnalysisRequest gets processed.
  # Is used to upload and park the data till the AnalysisRequest gets processed
  # @param uuid 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :authorization Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiIxMjM0NTY3ODkwIiwibmFtZSI6IkpvaG4gRG9lIiwiaWF0IjoxNTE2MjM5MDIyfQ.SflKxwRJSMeKKF2QT4fwpMeJf36POk6yJV_adQssw5c
  # @option opts [JsonSignedData] :body 
  # @return [File]
  describe 'add_data test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for cancel_processing
  # Endpoint is called from the Analysis Processing entity to submit the result.
  # Endpoint is called from the Analysis Processing entity to submit the result
  # @param uuid 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :authorization Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiIxMjM0NTY3ODkwIiwibmFtZSI6IkpvaG4gRG9lIiwiaWF0IjoxNTE2MjM5MDIyfQ.SflKxwRJSMeKKF2QT4fwpMeJf36POk6yJV_adQssw5c
  # @option opts [JsonSignedData] :body 
  # @return [File]
  describe 'cancel_processing test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for create_new_request
  # Endpoint used to create a new Analysis Request.
  # Endpoint used to create a new Analysis Request
  # @param [Hash] opts the optional parameters
  # @option opts [String] :authorization Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiIxMjM0NTY3ODkwIiwibmFtZSI6IkpvaG4gRG9lIiwiaWF0IjoxNTE2MjM5MDIyfQ.SflKxwRJSMeKKF2QT4fwpMeJf36POk6yJV_adQssw5c
  # @option opts [JsonSignedData] :body 
  # @return [String]
  describe 'create_new_request test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_actions
  # @param [Hash] opts the optional parameters
  # @option opts [String] :limit 
  # @option opts [String] :offset 
  # @return [File]
  describe 'get_actions test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_agent
  # Is called from the APE to request all parked datasets.
  # Is called from the APE to request all parked datasets. Returns the transmitted data for certain Request. When requesting the data, the status of the request is automatically set to processing.
  # @param uuid 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :authorization Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiIxMjM0NTY3ODkwIiwibmFtZSI6IkpvaG4gRG9lIiwiaWF0IjoxNTE2MjM5MDIyfQ.SflKxwRJSMeKKF2QT4fwpMeJf36POk6yJV_adQssw5c
  # @return [File]
  describe 'get_agent test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_all_requests2
  # Returns UUIDs of existing analyses.
  # Returns UUIDs of existing analyses.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :authorization Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiIxMjM0NTY3ODkwIiwibmFtZSI6IkpvaG4gRG9lIiwiaWF0IjoxNTE2MjM5MDIyfQ.SflKxwRJSMeKKF2QT4fwpMeJf36POk6yJV_adQssw5c
  # @option opts [String] :created - if Queryparam \&quot;created&#x3D;true\&quot; only the UUIDs of own Requests are shown
  # @option opts [String] :history - if queryparam \&quot;history\&quot; is set to true, endpoint returns all user actions. False per default.
  # @option opts [String] :limit Used for offset pagination. Limit/Offset Paging would look like GET /request?limit&#x3D;20&amp;offset&#x3D;100. This query would return the 20 rows starting with the 100th row
  # @option opts [String] :new -  if Queryparam \&quot;new&#x3D;true\&quot; only the UUIDs of new Requests ( Requests the user has not participated in and still allow participation) are shown
  # @option opts [String] :offset Used for offset pagination. Limit/Offset Paging would look like GET /request?limit&#x3D;20&amp;offset&#x3D;100. This query would return the 20 rows starting with the 100th row
  # @option opts [String] :preview 
  # @option opts [String] :ready 
  # @return [File]
  describe 'get_all_requests2 test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_data
  # Is called from the APE to request all parked datasets.
  # Is called from the APE to request all parked datasets. Returns the transmitted data for certain Request. When requesting the data, the status of the request is automatically set to processing.
  # @param uuid 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :authorization Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiIxMjM0NTY3ODkwIiwibmFtZSI6IkpvaG4gRG9lIiwiaWF0IjoxNTE2MjM5MDIyfQ.SflKxwRJSMeKKF2QT4fwpMeJf36POk6yJV_adQssw5c
  # @return [JsonSignedData]
  describe 'get_data test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_request
  # Returns the details for certain Request.
  # Returns the details for certain Request. When requesting an analysis a view of the analysis is stored in the database
  # @param uuid 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :authorization Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiIxMjM0NTY3ODkwIiwibmFtZSI6IkpvaG4gRG9lIiwiaWF0IjoxNTE2MjM5MDIyfQ.SflKxwRJSMeKKF2QT4fwpMeJf36POk6yJV_adQssw5c
  # @return [File]
  describe 'get_request test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_result
  # Can be called from creator to request the AnalysisResult.
  # Can be called from creator to request the AnalysisResult.
  # @param uuid 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :authorization Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiIxMjM0NTY3ODkwIiwibmFtZSI6IkpvaG4gRG9lIiwiaWF0IjoxNTE2MjM5MDIyfQ.SflKxwRJSMeKKF2QT4fwpMeJf36POk6yJV_adQssw5c
  # @return [File]
  describe 'get_result test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_status
  # @param [Hash] opts the optional parameters
  # @return [File]
  describe 'get_status test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for give_consent
  # Used to give consent for request.
  # Used to give consent for request. If the Endpoint is called from the creator of the Analysis, the status of the request is set to completed. If called by another is interpreted as giving consent to participate.
  # @param uuid 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :authorization Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiIxMjM0NTY3ODkwIiwibmFtZSI6IkpvaG4gRG9lIiwiaWF0IjoxNTE2MjM5MDIyfQ.SflKxwRJSMeKKF2QT4fwpMeJf36POk6yJV_adQssw5c
  # @return [File]
  describe 'give_consent test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for init_request_parameters
  # Endpoint used initialized addition datacollection parameters for requester.
  # Endpoint used initialized addition datacollection parameters for requester
  # @param uuid 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :authorization Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiIxMjM0NTY3ODkwIiwibmFtZSI6IkpvaG4gRG9lIiwiaWF0IjoxNTE2MjM5MDIyfQ.SflKxwRJSMeKKF2QT4fwpMeJf36POk6yJV_adQssw5c
  # @option opts [String] :body 
  # @return [String]
  describe 'init_request_parameters test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for set_agent
  # Is called from the APE to request all parked datasets.
  # Is called from the APE to request all parked datasets. Returns the transmitted data for certain Request. When requesting the data, the status of the request is automatically set to processing.
  # @param uuid 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :authorization Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiIxMjM0NTY3ODkwIiwibmFtZSI6IkpvaG4gRG9lIiwiaWF0IjoxNTE2MjM5MDIyfQ.SflKxwRJSMeKKF2QT4fwpMeJf36POk6yJV_adQssw5c
  # @return [File]
  describe 'set_agent test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for set_result
  # Endpoint is called from the Analysis Processing entity to submit the result.
  # Endpoint is called from the Analysis Processing entity to submit the result
  # @param uuid 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :authorization Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiIxMjM0NTY3ODkwIiwibmFtZSI6IkpvaG4gRG9lIiwiaWF0IjoxNTE2MjM5MDIyfQ.SflKxwRJSMeKKF2QT4fwpMeJf36POk6yJV_adQssw5c
  # @option opts [JsonSignedData] :body 
  # @return [File]
  describe 'set_result test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
