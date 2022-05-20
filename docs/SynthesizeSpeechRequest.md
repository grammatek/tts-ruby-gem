# Grammatek::TTS::SynthesizeSpeechRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **engine** | **String** | Specify which engine to use | [optional] |
| **language_code** | **String** | The language identification tag (ISO 639 code for the language name-ISO 3166 country code) for specifying the synthesis language. If left empty, language detection is done by the API. | [optional] |
| **lexicon_names** | **Array&lt;String&gt;** | List of one or more pronunciation lexicon names you want the service to apply during synthesis. Lexicons are applied only if the language of the lexicon is the same as the language of the voice. For information about storing lexicons, see PutLexicon. UNIMPLEMENTED | [optional] |
| **output_format** | **String** | The format in which the returned output will be encoded. For audio stream, this will be mp3, ogg_vorbis, or pcm. For speech marks, this will be json.  |  |
| **sample_rate** | **String** | The audio frequency specified in Hz. Output formats &#x60;mp3&#x60; and &#x60;ogg_vorbis&#x60; support all sample rates.  | [optional] |
| **speech_mark_types** | **Array&lt;String&gt;** | The type of speech marks returned for the input text.  Only word level speech marks are supported, which contain the start time of each word and their start and end byte offsets in the input text. E.g.      {      \&quot;Engine\&quot;: \&quot;standard\&quot;,      \&quot;LanguageCode\&quot;: \&quot;is-IS\&quot;,      \&quot;OutputFormat\&quot;: \&quot;json\&quot;,      \&quot;SpeechMarkTypes\&quot;: [\&quot;word\&quot;],      \&quot;Text\&quot;: \&quot; Góðan, dag. Hvað heitir þú? Kvöld-Úlfur.\&quot;,      \&quot;VoiceId\&quot;: \&quot;Alfur\&quot;     }  might return      {\&quot;time\&quot;: 54, \&quot;type\&quot;: \&quot;word\&quot;, \&quot;start\&quot;: 1, \&quot;end\&quot;: 9, \&quot;value\&quot;: \&quot;Góðan,\&quot;}     {\&quot;time\&quot;: 44, \&quot;type\&quot;: \&quot;word\&quot;, \&quot;start\&quot;: 10, \&quot;end\&quot;: 14, \&quot;value\&quot;: \&quot;dag.\&quot;}     {\&quot;time\&quot;: 26, \&quot;type\&quot;: \&quot;word\&quot;, \&quot;start\&quot;: 15, \&quot;end\&quot;: 20, \&quot;value\&quot;: \&quot;Hvað\&quot;}     {\&quot;time\&quot;: 33, \&quot;type\&quot;: \&quot;word\&quot;, \&quot;start\&quot;: 21, \&quot;end\&quot;: 27, \&quot;value\&quot;: \&quot;heitir\&quot;}     {\&quot;time\&quot;: 19, \&quot;type\&quot;: \&quot;word\&quot;, \&quot;start\&quot;: 28, \&quot;end\&quot;: 33, \&quot;value\&quot;: \&quot;þú?\&quot;}     {\&quot;time\&quot;: 88, \&quot;type\&quot;: \&quot;word\&quot;, \&quot;start\&quot;: 34, \&quot;end\&quot;: 48, \&quot;value\&quot;: \&quot;Kvöld-Úlfur.\&quot;}   | [optional] |
| **text** | **String** | Input text to synthesize. |  |
| **text_type** | **String** | Specifies whether the input text is plain text or SSML. The default value is plain text.   Currently the SSML support is restricted to just &#x60;&lt;phoneme&gt;&#x60; tags, e.g:&lt;br&gt;&#x60;&lt;speak&gt;Ég er &lt;phoneme alphabet&#x3D;&#39;x-sampa&#39; ph&#x3D;&#39;...&#39;&gt;gervimaður&lt;/phoneme&gt;&lt;/speak&gt;&#x60;  Currently only plain text requests are normalized before synthesis. | [optional] |
| **voice_id** | **String** | Voice ID to use for the synthesis |  |

## Example

```ruby
require 'grammatek/tts'

instance = Grammatek::TTS::SynthesizeSpeechRequest.new(
  engine: null,
  language_code: is-IS,
  lexicon_names: [],
  output_format: pcm,
  sample_rate: 22050,
  speech_mark_types: [&quot;word&quot;],
  text: Halló! Ég er gervimaður.,
  text_type: null,
  voice_id: Alfur
)
```

