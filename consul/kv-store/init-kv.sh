#!/bin/sh

cd $(dirname "$0")

for file in $(find . -type f -name '*.yml'); do
  oldstr=".\/"
  newstr=""
  echo "$(cat $file)" | consul kv put $(echo $file | sed "s/$oldstr/$newstr/") -
done