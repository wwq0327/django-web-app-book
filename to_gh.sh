#!/bin/bash

gitbook build .
cp -r _book/* ../gh-book
cd ../gh-book
git add .
git ci -m 'pub'
git push origin gh-pages
