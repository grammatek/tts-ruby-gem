# GTTS::SpeechApi

All URIs are relative to *https://api2.grammatek.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_voices**](SpeechApi.md#get_voices) | **GET** /tts/v1/voices | Describe/query available voices |
| [**post_speech**](SpeechApi.md#post_speech) | **POST** /tts/v1/speech | TTS - Synthesize speech from text |


## get_voices

> <Array<Voice>> get_voices(opts)

Describe/query available voices

Describe/query available voices. Providing the access token as Bearer token in the Authorization header is required. 

### Examples

```ruby
require 'time'
require 'grammatek-tts'
# setup authorization
GTTS.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = GTTS::SpeechApi.new
opts = {
  engine: 'standard', # String | Specify which engine to use
  language_code: 'language_code_example' # String | The language identification tag (ISO 639 code for the language name-ISO 3166 country code) for filtering the list of voices returned. If you don't specify this optional parameter, all available voices are returned.  example: is-IS
}

begin
  # Describe/query available voices
  result = api_instance.get_voices(opts)
  p result
rescue GTTS::ApiError => e
  puts "Error when calling SpeechApi->get_voices: #{e}"
end
```

#### Using the get_voices_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<Voice>>, Integer, Hash)> get_voices_with_http_info(opts)

```ruby
begin
  # Describe/query available voices
  data, status_code, headers = api_instance.get_voices_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<Voice>>
rescue GTTS::ApiError => e
  puts "Error when calling SpeechApi->get_voices_with_http_info: #{e}"
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

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## post_speech

> Object post_speech(opts)

TTS - Synthesize speech from text

TTS - Synthesize speech from text. Please provide the following required parameters:    - OutputFormat (mp3, ogg_vorbis, pcm, json)   - Text (input text to synthesize)   - VoiceId (voice ID to use for the synthesis)  You can also provide the following optional parameters:    - SampleRate (audio frequency in Hz, supported values: 8000, 16000, 22050)   - SpeechMarkTypes (type of speech marks to return, supported values: word)   - Engine (engine to use, currently only vaöue 'standard' is supported)   - LanguageCode (language code to use, only 'is-IS' is supported)   - TextType (type of input text, supported values: 'text', 'ssml')   - LexiconNames (list of lexicon names to use, currently this is not supported)  If TextType 'ssml' is provided: we only support a subset of tags. Please contact us for more information.  In case the chosen output format is json, the speech marks are returned in the response body as JSON. No audio is returned in that case. Therefore, if you need the audio, you need to make a second request with the same parameters but a different output format.  Providing the access token as Bearer token in the Authorization header is required. 

### Examples

```ruby
require 'time'
require 'grammatek-tts'
# setup authorization
GTTS.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = GTTS::SpeechApi.new
opts = {
  synthesize_speech_request: GTTS::SynthesizeSpeechRequest.new({output_format: 'json', text: 'Halló, Rómverskur riddari réðst inn í Rómaborg, rændi og ruplaði rabbabara og rófum.', voice_id: 'Alfur'}) # SynthesizeSpeechRequest | 
}

begin
  # TTS - Synthesize speech from text
  result = api_instance.post_speech(opts)
  p result
rescue GTTS::ApiError => e
  puts "Error when calling SpeechApi->post_speech: #{e}"
end
```

#### Using the post_speech_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> post_speech_with_http_info(opts)

```ruby
begin
  # TTS - Synthesize speech from text
  data, status_code, headers = api_instance.post_speech_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue GTTS::ApiError => e
  puts "Error when calling SpeechApi->post_speech_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **synthesize_speech_request** | [**SynthesizeSpeechRequest**](SynthesizeSpeechRequest.md) |  | [optional] |

### Return type

**Object**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: audio/mpeg, application/octet-stream, audio/ogg, application/x-json-stream, audio/x-wav, application/json

