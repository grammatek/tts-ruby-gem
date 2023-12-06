#! /bin/bash

OPENAPI_GEN="$JAVA_HOME/bin/java -jar \
             /usr/local/Cellar/openapi-generator/7.1.0/libexec/openapi-generator-cli.jar"

export RUBY_POST_PROCESS_FILE="rubocop -a"

$OPENAPI_GEN generate -i .openapi-generator/grammatek-tts-oas.yaml  -g ruby \
--additional-properties gemAuthor='Daniel Schnell',gemAuthorEmail=dschnell@grammatek.com,gemDescription='This is the official Ruby Gem for Grammatek TTS API',gemHomepage=https://github.com/grammatek/tts-ruby-gem,gemLicense=MIT,gemName=grammatek-tts,\
gemSummary='A Ruby wrapper for the Grammatek ehf TTS REST API',gemVersion=0.5,moduleName=GTTS,library=faraday -o . >openapigen_output.txt
