#!/usr/bin/env bash
set -uo pipefail

something_fishy=0

for image in $(find /src -type f -name '*yml' -exec grep image {} \; | awk '{ print $2 }'); do
    trivy -q image -s HIGH,CRITICAL --exit-code 1 "$image"
    contains_vuls=$?
    something_fishy=$(( $something_fishy + $contains_vuls ))
    if [ "$contains_vuls" -ne 0 ]
    then
      echo "$image is NOK!"
    else
      echo "$image is OK!"
    fi
done

echo "Found ${something_fishy} images with issues!"
exit "$something_fishy"