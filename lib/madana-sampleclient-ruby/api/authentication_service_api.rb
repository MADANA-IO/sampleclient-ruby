=begin
#madana-api

#<h1>API Quickstart Guide</h1>        <p>This documentation contains a Quickstart Guide, a few <a href=\"downloads.html\">sample clients</a>  for download and information about the available  <a href=\"resources.html\">endpoints</a>  and  <a href=\"data.html\">DataTypes</a>  </p>     <p>The <a target=\"_blank\" href=\"http://madana-explorer-staging.eu-central-1.elasticbeanstalk.com/login\">  MADANA Explorer</a> can be used to verify the interactions with the API</p>           <p>Internal use only. For more information visit <a href=\"https://www.madana.io\">www.madana.io</a></p>         <br> <br>

The version of the OpenAPI document: 0.4.12

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.3.0

=end

require 'cgi'

module   MadanaSampleclientRuby
  class AuthenticationServiceApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Authenticates a new application and returns the token.
    # Authenticates a new application and returns the token
    # @param [Hash] opts the optional parameters
    # @option opts [JsonMDNCertificate] :body the credentials used to validate the user
    # @return [JsonMDNToken]
    def authenticate_application(opts = {})
      data, _status_code, _headers = authenticate_application_with_http_info(opts)
      data
    end

    # Authenticates a new application and returns the token.
    # Authenticates a new application and returns the token
    # @param [Hash] opts the optional parameters
    # @option opts [JsonMDNCertificate] :body the credentials used to validate the user
    # @return [Array<(JsonMDNToken, Integer, Hash)>] JsonMDNToken data, response status code and response headers
    def authenticate_application_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AuthenticationServiceApi.authenticate_application ...'
      end
      # resource path
      local_var_path = '/authentication/application'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] || @api_client.object_to_http_body(opts[:'body']) 

      # return_type
      return_type = opts[:return_type] || 'JsonMDNToken' 

      # auth_names
      auth_names = opts[:auth_names] || []

      new_options = opts.merge(
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AuthenticationServiceApi#authenticate_application\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # @param wallet [String] the wallet which should be authenticated
    # @param [Hash] opts the optional parameters
    # @option opts [JsonMDNOAuthToken] :body Token containing nonce and signate
    # @return [File]
    def authenticate_ethereum_wallet(wallet, opts = {})
      data, _status_code, _headers = authenticate_ethereum_wallet_with_http_info(wallet, opts)
      data
    end

    # @param wallet [String] the wallet which should be authenticated
    # @param [Hash] opts the optional parameters
    # @option opts [JsonMDNOAuthToken] :body Token containing nonce and signate
    # @return [Array<(File, Integer, Hash)>] File data, response status code and response headers
    def authenticate_ethereum_wallet_with_http_info(wallet, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AuthenticationServiceApi.authenticate_ethereum_wallet ...'
      end
      # verify the required parameter 'wallet' is set
      if @api_client.config.client_side_validation && wallet.nil?
        fail ArgumentError, "Missing the required parameter 'wallet' when calling AuthenticationServiceApi.authenticate_ethereum_wallet"
      end
      # resource path
      local_var_path = '/authentication/ethereum/{wallet}'.sub('{' + 'wallet' + '}', CGI.escape(wallet.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json', 'application/xml'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] || @api_client.object_to_http_body(opts[:'body']) 

      # return_type
      return_type = opts[:return_type] || 'File' 

      # auth_names
      auth_names = opts[:auth_names] || []

      new_options = opts.merge(
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AuthenticationServiceApi#authenticate_ethereum_wallet\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Authenticates a new user and returns the token (  forbidden if the credentials cannot be validated ).
    # Authenticates a new user and returns the token (  forbidden if the credentials cannot be validated )
    # @param [Hash] opts the optional parameters
    # @option opts [JsonMDNUserCredentials] :body the credentials used to validate the user
    # @return [JsonMDNToken]
    def authenticate_user(opts = {})
      data, _status_code, _headers = authenticate_user_with_http_info(opts)
      data
    end

    # Authenticates a new user and returns the token (  forbidden if the credentials cannot be validated ).
    # Authenticates a new user and returns the token (  forbidden if the credentials cannot be validated )
    # @param [Hash] opts the optional parameters
    # @option opts [JsonMDNUserCredentials] :body the credentials used to validate the user
    # @return [Array<(JsonMDNToken, Integer, Hash)>] JsonMDNToken data, response status code and response headers
    def authenticate_user_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AuthenticationServiceApi.authenticate_user ...'
      end
      # resource path
      local_var_path = '/authentication'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] || @api_client.object_to_http_body(opts[:'body']) 

      # return_type
      return_type = opts[:return_type] || 'JsonMDNToken' 

      # auth_names
      auth_names = opts[:auth_names] || []

      new_options = opts.merge(
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AuthenticationServiceApi#authenticate_user\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # @param wallet [String] the wallet which should be authenticated
    # @param [Hash] opts the optional parameters
    # @option opts [JsonMDNOAuthToken] :body Token containing nonce and signate
    # @return [File]
    def authenticate_with_ethereum_challenge(wallet, opts = {})
      data, _status_code, _headers = authenticate_with_ethereum_challenge_with_http_info(wallet, opts)
      data
    end

    # @param wallet [String] the wallet which should be authenticated
    # @param [Hash] opts the optional parameters
    # @option opts [JsonMDNOAuthToken] :body Token containing nonce and signate
    # @return [Array<(File, Integer, Hash)>] File data, response status code and response headers
    def authenticate_with_ethereum_challenge_with_http_info(wallet, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AuthenticationServiceApi.authenticate_with_ethereum_challenge ...'
      end
      # verify the required parameter 'wallet' is set
      if @api_client.config.client_side_validation && wallet.nil?
        fail ArgumentError, "Missing the required parameter 'wallet' when calling AuthenticationServiceApi.authenticate_with_ethereum_challenge"
      end
      # resource path
      local_var_path = '/authentication/ethereum/{wallet}/challenge'.sub('{' + 'wallet' + '}', CGI.escape(wallet.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json', 'application/xml'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] || @api_client.object_to_http_body(opts[:'body']) 

      # return_type
      return_type = opts[:return_type] || 'File' 

      # auth_names
      auth_names = opts[:auth_names] || []

      new_options = opts.merge(
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AuthenticationServiceApi#authenticate_with_ethereum_challenge\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Returns the AUthorization URL to verify a Twitter Accounts.
    # Returns the AUthorization URL to verify a Twitter Accounts
    # @param [Hash] opts the optional parameters
    # @return [File]
    def get_fractal_authentication_url(opts = {})
      data, _status_code, _headers = get_fractal_authentication_url_with_http_info(opts)
      data
    end

    # Returns the AUthorization URL to verify a Twitter Accounts.
    # Returns the AUthorization URL to verify a Twitter Accounts
    # @param [Hash] opts the optional parameters
    # @return [Array<(File, Integer, Hash)>] File data, response status code and response headers
    def get_fractal_authentication_url_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AuthenticationServiceApi.get_fractal_authentication_url ...'
      end
      # resource path
      local_var_path = '/authentication/fractal'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      # return_type
      return_type = opts[:return_type] || 'File' 

      # auth_names
      auth_names = opts[:auth_names] || []

      new_options = opts.merge(
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AuthenticationServiceApi#get_fractal_authentication_url\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Returns a nonce for the client which is used as content for the to be created signature.
    # Returns a nonce for the client which is used as content for the to be created signature
    # @param wallet [String] - wallet address as String * @HTTP 417 If the address is not valid
    # @param [Hash] opts the optional parameters
    # @option opts [String] :authorization Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiIxMjM0NTY3ODkwIiwibmFtZSI6IkpvaG4gRG9lIiwiaWF0IjoxNTE2MjM5MDIyfQ.SflKxwRJSMeKKF2QT4fwpMeJf36POk6yJV_adQssw5c
    # @return [JsonMDNToken]
    def get_nonce_for_ethereum_wallet(wallet, opts = {})
      data, _status_code, _headers = get_nonce_for_ethereum_wallet_with_http_info(wallet, opts)
      data
    end

    # Returns a nonce for the client which is used as content for the to be created signature.
    # Returns a nonce for the client which is used as content for the to be created signature
    # @param wallet [String] - wallet address as String * @HTTP 417 If the address is not valid
    # @param [Hash] opts the optional parameters
    # @option opts [String] :authorization Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiIxMjM0NTY3ODkwIiwibmFtZSI6IkpvaG4gRG9lIiwiaWF0IjoxNTE2MjM5MDIyfQ.SflKxwRJSMeKKF2QT4fwpMeJf36POk6yJV_adQssw5c
    # @return [Array<(JsonMDNToken, Integer, Hash)>] JsonMDNToken data, response status code and response headers
    def get_nonce_for_ethereum_wallet_with_http_info(wallet, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AuthenticationServiceApi.get_nonce_for_ethereum_wallet ...'
      end
      # verify the required parameter 'wallet' is set
      if @api_client.config.client_side_validation && wallet.nil?
        fail ArgumentError, "Missing the required parameter 'wallet' when calling AuthenticationServiceApi.get_nonce_for_ethereum_wallet"
      end
      # resource path
      local_var_path = '/authentication/ethereum/{wallet}'.sub('{' + 'wallet' + '}', CGI.escape(wallet.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      header_params[:'Authorization'] = opts[:'authorization'] if !opts[:'authorization'].nil?

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      # return_type
      return_type = opts[:return_type] || 'JsonMDNToken' 

      # auth_names
      auth_names = opts[:auth_names] || []

      new_options = opts.merge(
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AuthenticationServiceApi#get_nonce_for_ethereum_wallet\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Used to validate the active connection with the API.
    # Used to validate the active connection with the API
    # @param [Hash] opts the optional parameters
    # @return [Hash<String, Object>]
    def get_object(opts = {})
      data, _status_code, _headers = get_object_with_http_info(opts)
      data
    end

    # Used to validate the active connection with the API.
    # Used to validate the active connection with the API
    # @param [Hash] opts the optional parameters
    # @return [Array<(Hash<String, Object>, Integer, Hash)>] Hash<String, Object> data, response status code and response headers
    def get_object_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AuthenticationServiceApi.get_object ...'
      end
      # resource path
      local_var_path = '/authentication'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      # return_type
      return_type = opts[:return_type] || 'Hash<String, Object>' 

      # auth_names
      auth_names = opts[:auth_names] || []

      new_options = opts.merge(
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AuthenticationServiceApi#get_object\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Returns the AUthorization URL to verify a Twitter Accounts.
    # Returns the AUthorization URL to verify a Twitter Accounts
    # @param [Hash] opts the optional parameters
    # @return [File]
    def get_twitter_authentication_url(opts = {})
      data, _status_code, _headers = get_twitter_authentication_url_with_http_info(opts)
      data
    end

    # Returns the AUthorization URL to verify a Twitter Accounts.
    # Returns the AUthorization URL to verify a Twitter Accounts
    # @param [Hash] opts the optional parameters
    # @return [Array<(File, Integer, Hash)>] File data, response status code and response headers
    def get_twitter_authentication_url_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AuthenticationServiceApi.get_twitter_authentication_url ...'
      end
      # resource path
      local_var_path = '/authentication/twitter'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      # return_type
      return_type = opts[:return_type] || 'File' 

      # auth_names
      auth_names = opts[:auth_names] || []

      new_options = opts.merge(
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AuthenticationServiceApi#get_twitter_authentication_url\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Used as Callback URL when users have successfully authorized their facbeook account.
    # Used as Callback URL when users have successfully authorized their facbeook account
    # @param [Hash] opts the optional parameters
    # @option opts [String] :body 
    # @return [File]
    def set_facebook_uid(opts = {})
      data, _status_code, _headers = set_facebook_uid_with_http_info(opts)
      data
    end

    # Used as Callback URL when users have successfully authorized their facbeook account.
    # Used as Callback URL when users have successfully authorized their facbeook account
    # @param [Hash] opts the optional parameters
    # @option opts [String] :body 
    # @return [Array<(File, Integer, Hash)>] File data, response status code and response headers
    def set_facebook_uid_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AuthenticationServiceApi.set_facebook_uid ...'
      end
      # resource path
      local_var_path = '/authentication/facebook'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json', 'application/xml'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] || @api_client.object_to_http_body(opts[:'body']) 

      # return_type
      return_type = opts[:return_type] || 'File' 

      # auth_names
      auth_names = opts[:auth_names] || []

      new_options = opts.merge(
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AuthenticationServiceApi#set_facebook_uid\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # @param [Hash] opts the optional parameters
    # @option opts [String] :body 
    # @return [File]
    def set_fractal_uid(opts = {})
      data, _status_code, _headers = set_fractal_uid_with_http_info(opts)
      data
    end

    # @param [Hash] opts the optional parameters
    # @option opts [String] :body 
    # @return [Array<(File, Integer, Hash)>] File data, response status code and response headers
    def set_fractal_uid_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AuthenticationServiceApi.set_fractal_uid ...'
      end
      # resource path
      local_var_path = '/authentication/fractal'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json', 'application/xml'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] || @api_client.object_to_http_body(opts[:'body']) 

      # return_type
      return_type = opts[:return_type] || 'File' 

      # auth_names
      auth_names = opts[:auth_names] || []

      new_options = opts.merge(
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AuthenticationServiceApi#set_fractal_uid\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # @param [Hash] opts the optional parameters
    # @option opts [JsonMDNOAuthToken] :body 
    # @return [File]
    def set_twitter_uid(opts = {})
      data, _status_code, _headers = set_twitter_uid_with_http_info(opts)
      data
    end

    # @param [Hash] opts the optional parameters
    # @option opts [JsonMDNOAuthToken] :body 
    # @return [Array<(File, Integer, Hash)>] File data, response status code and response headers
    def set_twitter_uid_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AuthenticationServiceApi.set_twitter_uid ...'
      end
      # resource path
      local_var_path = '/authentication/twitter'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json', 'application/xml'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] || @api_client.object_to_http_body(opts[:'body']) 

      # return_type
      return_type = opts[:return_type] || 'File' 

      # auth_names
      auth_names = opts[:auth_names] || []

      new_options = opts.merge(
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AuthenticationServiceApi#set_twitter_uid\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
