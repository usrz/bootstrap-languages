#!/bin/sh

# Minify our CSS
curl -X POST -s --data-urlencode 'input@languages.css' https://cssminifier.com/raw > languages.min.css
