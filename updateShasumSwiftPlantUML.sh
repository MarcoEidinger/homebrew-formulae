#!/bin/sh
# Check for arguments
if [ $# -eq 0 ]; then
    echo "No arguments provided. First argument has to be version, e.g. '0.3.0'"
    exit 1
fi
# take version (e.g. 0.3.0) as argument
VERSION=$1
# navigate into Formula directory
cd Formula
# delete any local tarball with the same name
rm $VERSION.tar.gz 2> /dev/null
# fetch tarball version
curl -L -O https://github.com/MarcoEidinger/SwiftPlantUML/archive/$VERSION.tar.gz --silent
# calcuate shasum
SHA256=$(shasum --algorithm 256 $VERSION.tar.gz | awk '{print $1}')
# print out new shasum for convenience reasons
echo "SHA256 for $VERSION is $SHA256"
# replace old with new shasum in swiftplantuml.rb
sed -E -i '' 's/^  sha256 ".+"/  sha256 "'$SHA256\"/ swiftplantuml.rb
# print out contents of file swiftplantuml.rb for convenience reasons
cat swiftplantuml.rb
# delete downloaded tarball
rm $VERSION.tar.gz
