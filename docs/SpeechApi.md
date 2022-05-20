# Grammatek::TTS::SpeechApi

All URIs are relative to *https://api.grammatek.com/tts/v0*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**speech_post**](SpeechApi.md#speech_post) | **POST** /speech |  |
| [**voices_get**](SpeechApi.md#voices_get) | **GET** /voices |  |


## speech_post

> Object speech_post(opts)



TTS - Synthesize speech from text

### Examples

```ruby
require 'time'
require 'grammatek-tts'

api_instance = Grammatek::TTS::SpeechApi.new
opts = {
  synthesize_speech_request: Grammatek::TTS::SynthesizeSpeechRequest.new({output_format: 'json', text: 'Halló! Ég er gervimaður.', voice_id: 'Alfur'}) # SynthesizeSpeechRequest | 
}

begin
  
  result = api_instance.speech_post(opts)
  p result
rescue Grammatek::TTS::ApiError => e
  puts "Error when calling SpeechApi->speech_post: #{e}"
end
```

#### Using the speech_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> speech_post_with_http_info(opts)

```ruby
begin
  
  data, status_code, headers = api_instance.speech_post_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue Grammatek::TTS::ApiError => e
  puts "Error when calling SpeechApi->speech_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **synthesize_speech_request** | [**SynthesizeSpeechRequest**](SynthesizeSpeechRequest.md) |  | [optional] |

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: audio/mpeg, audio/ogg, application/x-json-stream, audio/x-wav, application/json


## voices_get

> <Array<Voice>> voices_get(opts)



Describe/query available voices

### Examples

```ruby
require 'time'
require 'grammatek-tts'

api_instance = Grammatek::TTS::SpeechApi.new
opts = {
  engine: 'standard', # String | Specify which engine to use
  language_code: 'language_code_example' # String | The language identification tag (ISO 639 code for the language name-ISO 3166 country code) for filtering the list of voices returned. If you don't specify this optional parameter, all available voices are returned.  example: is-IS
}

begin
  
  result = api_instance.voices_get(opts)
  p result
rescue Grammatek::TTS::ApiError => e
  puts "Error when calling SpeechApi->voices_get: #{e}"
end
```

#### Using the voices_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<Voice>>, Integer, Hash)> voices_get_with_http_info(opts)

```ruby
begin
  
  data, status_code, headers = api_instance.voices_get_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<Voice>>
rescue Grammatek::TTS::ApiError => e
  puts "Error when calling SpeechApi->voices_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **engine** | **String** | Specify which engine to use | [optional] |
| **language_code** | **String** | The language identification tag (ISO 639 code for the language name-ISO 3166 country code) for filtering the list of voices returned. If you don&#39;t specify this optional parameter, all available voices are returned.  example: is-IS | [optional] |

### Return type

[**Array&lt;Voice&gt;**](Voice.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

