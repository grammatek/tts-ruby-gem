# GTTS::AuthResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **access_token** | **String** | Access token for authentication and API access. Use this as Bearer token in the Authorization header for all API endpoints.  | [optional] |
| **expires_in** | **Integer** | Expiration time of the access token in [seconds] | [optional] |

## Example

```ruby
require 'grammatek-tts'

instance = GTTS::AuthResponse.new(
  access_token: null,
  expires_in: null
)
```

