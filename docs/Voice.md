# Grammatek::TTS::Voice

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **gender** | **String** |  | [optional] |
| **language_code** | **String** |  | [optional] |
| **language_name** | **String** |  | [optional] |
| **supported_engines** | **Array&lt;String&gt;** |  | [optional] |
| **voice_id** | **String** |  | [optional] |

## Example

```ruby
require 'grammatek/tts'

instance = Grammatek::TTS::Voice.new(
  gender: null,
  language_code: is-IS,
  language_name: Íslenska,
  supported_engines: null,
  voice_id: Alfur
)
```

