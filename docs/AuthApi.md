# GTTS::AuthApi

All URIs are relative to *https://api2.grammatek.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_token_info**](AuthApi.md#get_token_info) | **GET** /auth/v1/token-info | Get token info and expiration time |
| [**post_auth**](AuthApi.md#post_auth) | **POST** /auth/v1 | Authenticate and receive access token |


## get_token_info

> <TokenInfoResponse> get_token_info

Get token info and expiration time

Retrieve the absolute date/expiration time of the given access token. If the given token is valid, a 200 response is returned with the expiration date/time of the token. If the token is invalid, a 401 response is returned. Providing the access token as Bearer token in the Authorization header is required. 

### Examples

```ruby
require 'time'
require 'grammatek-tts'
# setup authorization
GTTS.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = GTTS::AuthApi.new

begin
  # Get token info and expiration time
  result = api_instance.get_token_info
  p result
rescue GTTS::ApiError => e
  puts "Error when calling AuthApi->get_token_info: #{e}"
end
```

#### Using the get_token_info_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TokenInfoResponse>, Integer, Hash)> get_token_info_with_http_info

```ruby
begin
  # Get token info and expiration time
  data, status_code, headers = api_instance.get_token_info_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TokenInfoResponse>
rescue GTTS::ApiError => e
  puts "Error when calling AuthApi->get_token_info_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**TokenInfoResponse**](TokenInfoResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## post_auth

> <AuthResponse> post_auth(auth_request)

Authenticate and receive access token

Authenticate with `client_id` and `client_secret` to receive a temporary access token. The response is a JSON object with 2 entries: `access_token` and `expires_in`. The former provides the access token itself, the latter is the expiration time in seconds of the returned token after which it is invalidated and can no longer be used. You need to provide a valid access token as Bearer token in the Authorization header for all other API endpoints. If you encounter a 401 error in one of the other endpoints, your access token has expired and you need to re-authenticate. You can use the endpoint /auth/v1/token-info to check the absolute expiration date/time of the returned access token for e.g. caching purposes. 

### Examples

```ruby
require 'time'
require 'grammatek-tts'

api_instance = GTTS::AuthApi.new
auth_request = GTTS::AuthRequest.new({client_id: 'client_id_example', client_secret: 'client_secret_example'}) # AuthRequest | 

begin
  # Authenticate and receive access token
  result = api_instance.post_auth(auth_request)
  p result
rescue GTTS::ApiError => e
  puts "Error when calling AuthApi->post_auth: #{e}"
end
```

#### Using the post_auth_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AuthResponse>, Integer, Hash)> post_auth_with_http_info(auth_request)

```ruby
begin
  # Authenticate and receive access token
  data, status_code, headers = api_instance.post_auth_with_http_info(auth_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AuthResponse>
rescue GTTS::ApiError => e
  puts "Error when calling AuthApi->post_auth_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **auth_request** | [**AuthRequest**](AuthRequest.md) |  |  |

### Return type

[**AuthResponse**](AuthResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

