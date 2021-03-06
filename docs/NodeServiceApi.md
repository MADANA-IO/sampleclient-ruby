#   MadanaSampleclientRuby::NodeServiceApi

All URIs are relative to *http://api.madana.io/rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_bootstrap**](NodeServiceApi.md#get_bootstrap) | **GET** /nodes/bootstrap | 
[**get_nodes2**](NodeServiceApi.md#get_nodes2) | **GET** /nodes | 
[**post_node_info**](NodeServiceApi.md#post_node_info) | **POST** /nodes | 



## get_bootstrap

> File get_bootstrap



### Example

```ruby
# load the gem
require 'madana-sampleclient-ruby'

api_instance =   MadanaSampleclientRuby::NodeServiceApi.new

begin
  result = api_instance.get_bootstrap
  p result
rescue   MadanaSampleclientRuby::ApiError => e
  puts "Exception when calling NodeServiceApi->get_bootstrap: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**File**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_nodes2

> File get_nodes2(opts)



### Example

```ruby
# load the gem
require 'madana-sampleclient-ruby'

api_instance =   MadanaSampleclientRuby::NodeServiceApi.new
opts = {
  owner: 'owner_example' # String | 
}

begin
  result = api_instance.get_nodes2(opts)
  p result
rescue   MadanaSampleclientRuby::ApiError => e
  puts "Exception when calling NodeServiceApi->get_nodes2: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**|  | [optional] 

### Return type

**File**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## post_node_info

> File post_node_info(opts)



### Example

```ruby
# load the gem
require 'madana-sampleclient-ruby'

api_instance =   MadanaSampleclientRuby::NodeServiceApi.new
opts = {
  body:   MadanaSampleclientRuby::JsonNodeInfo.new # JsonNodeInfo | 
}

begin
  result = api_instance.post_node_info(opts)
  p result
rescue   MadanaSampleclientRuby::ApiError => e
  puts "Exception when calling NodeServiceApi->post_node_info: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**JsonNodeInfo**](JsonNodeInfo.md)|  | [optional] 

### Return type

**File**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json, application/xml

