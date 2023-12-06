# GTTS::TokenInfoResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **unix_timestamp** | **Integer** | Expiration time as a Unix timestamp. | [optional] |
| **human_readable** | **String** | Expiration time in a human-readable format. | [optional] |

## Example

```ruby
require 'grammatek-tts'

instance = GTTS::TokenInfoResponse.new(
  unix_timestamp: null,
  human_readable: null
)
```

