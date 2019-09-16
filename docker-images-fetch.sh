#!/bin/bash

INDEX_LIST=$(appsody repo list | grep https | sed -E 's|.*(https.*)|\1|')
for url in ${INDEX_LIST}; do
    echo "== $url"
    index=$(curl -s -L ${url})
    for x in $(echo "$index" | grep 'url:' ); do
        if [ $x != 'url:' ]; then
            stack=$(echo $x | sed -E 's|.*/([^/]+)-v([0-9]+\.[0-9]+\.[0-9]+).*|appsody/\1:\2|')
            stack_1=${stack%.*}
            stack_2=${stack_1%.*}
            echo === $stack
            docker pull $stack
            echo === $stack_1
            docker pull $stack_1
            echo === $stack_2
            docker pull $stack_2
        fi
    done
done
