# grammatek/tts

Grammatek::TTS - the Ruby gem for the TTS API

This API gives access to Grammatek ehf text to speech services.

This SDK is automatically generated by the [OpenAPI Generator](https://openapi-generator.tech) project:

- API version: v0.1
- Package version: 0.1
- Build package: org.openapitools.codegen.languages.RubyClientCodegen

## Installation

### Build a gem

To build the Ruby code into a gem:

```shell
gem build grammatek/tts.gemspec
```

Then either install the gem locally:

```shell
gem install ./grammatek/tts-0.1.gem
```

(for development, run `gem install --dev ./grammatek/tts-0.1.gem` to install the development dependencies)

or publish the gem to a gem hosting service, e.g. [RubyGems](https://rubygems.org/).

Finally add this to the Gemfile:

    gem 'grammatek/tts', '~> 0.1'

### Install from Git

If the Ruby gem is hosted at a git repository: https://github.com/GIT_USER_ID/GIT_REPO_ID, then add the following in the Gemfile:

    gem 'grammatek/tts', :git => 'https://github.com/GIT_USER_ID/GIT_REPO_ID.git'

### Include the Ruby code directly

Include the Ruby code directly using `-I` as follows:

```shell
ruby -Ilib script.rb
```

## Getting Started

Please follow the [installation](#installation) procedure and then run the following code:

```ruby
# Load the gem
require 'grammatek/tts'

api_instance = Grammatek::TTS::SpeechApi.new
opts = {
  synthesize_speech_request: Grammatek::TTS::SynthesizeSpeechRequest.new({output_format: 'json', text: 'Halló! Ég er gervimaður.', voice_id: 'Alfur'}) # SynthesizeSpeechRequest | 
}

begin
  result = api_instance.speech_post(opts)
  p result
rescue Grammatek::TTS::ApiError => e
  puts "Exception when calling SpeechApi->speech_post: #{e}"
end

```

## Documentation for API Endpoints

All URIs are relative to *https://api.grammatek.com/tts/v0*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*Grammatek::TTS::SpeechApi* | [**speech_post**](docs/SpeechApi.md#speech_post) | **POST** /speech | 
*Grammatek::TTS::SpeechApi* | [**voices_get**](docs/SpeechApi.md#voices_get) | **GET** /voices | 


## Documentation for Models

 - [Grammatek::TTS::Error](docs/Error.md)
 - [Grammatek::TTS::SynthesizeSpeechRequest](docs/SynthesizeSpeechRequest.md)
 - [Grammatek::TTS::Voice](docs/Voice.md)


## Documentation for Authorization

 All endpoints do not require authorization.

