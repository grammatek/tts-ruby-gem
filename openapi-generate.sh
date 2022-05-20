#! /bin/bash
openapi-generator generate -i .openapi-generator/grammatek-tts-oas.yaml  -g ruby \
  --additional-properties gemAuthor='Daniel Schnell',gemAuthorEmail=dschnell@grammatek.com,gemDescription='This is the official Ruby Gem for Grammatek TTS API',gemHomepage=https://gitlab.com/grammatek/tts-ruby-gem,gemLicense=MIT,gemName=grammatek-tts,gemSummary='A Ruby wrapper for the Grammatek ehf REST API',gemVersion=0.1,moduleName=Grammatek::TTS\
   -o .