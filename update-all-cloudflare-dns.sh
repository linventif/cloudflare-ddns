#!/usr/bin/env bash

for file in *.conf; do
  if [ "$file" == "example.conf" ]; then
    continue
  fi
  /usr/local/bin/ddns-cloudflare/update-cloudflare-dns.sh $file
done