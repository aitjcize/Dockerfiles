#!/bin/bash

EXTRA_ARGS=""

if [ "$DO_DELETE" == "true" ]; then
  EXTRA_ARGS="$EXTRA_ARGS --do-delete"
fi

if [ "$REINDEX" == "true" ]; then
  EXTRA_ARGS="$EXTRA_ARGS --flush-index"
fi

while true; do
  echo gphotos-sync --retry-download $EXTRA_ARGS /storage
  sleep 43200
done
