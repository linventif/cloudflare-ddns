#!/usr/bin/env bash

cd /usr/local/bin/ddns-cloudflare

for file in *.conf; do
  if [ "$file" == "example.conf" ]; then
    continue
  fi
  /usr/local/bin/ddns-cloudflare/update-cloudflare-dns.sh $file
done

# example cronjob every 5 minutes
# */5 * * * * /usr/local/bin/ddns-cloudflare/update-all-cloudflare-dns.sh