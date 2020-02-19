#!/bin/bash

set -x

curl 'https://changelog.qgis.org/en/qgis/version/list/' -H 'User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36' | grep -oP '/en/qgis/version/[0-9].*/' | sort | uniq | while read p; do curl 'https://changelog.qgis.org'"$p"'gnu/' -H 'User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36' | grep -E '^\*' | sed -r 's/^\* //g;s/ : /\t/g' | sed -e 's|^|'"$p"'\t|' | nl; done >./out.txt

sed -i '1s/^/ itemsNumber\tversion\tfeature\tdescription\n/' out.txt