#!/bin/bash

BUILD_DIR="$1"
DEST_DIR="$2"

if [[ -z "$BUILD_DIR" || -z "$DEST_DIR" ]]; then
  echo "Usage: $0 <build_dir> <copy_dest_dir>"
  exit 1
fi

rm -rf $DEST_DIR
mkdir -p "$DEST_DIR"

find $BUILD_DIR -name "*.s" | sort > $DEST_DIR/log.txt 2>&1

while IFS= read -r FILE; do
  [[ -z "$FILE" ]] && continue

  if [[ -f "$FILE" ]]; then
    REL_PATH="$FILE"
    mkdir -p "$DEST_DIR/$(dirname "$REL_PATH")"
    cp --parents "$FILE" "$DEST_DIR" 2>/dev/null || {
      mkdir -p "$DEST_DIR/$(dirname "$REL_PATH")"
      cp "$FILE" "$DEST_DIR/$REL_PATH"
    }
    sed -i '/.ident/d' "$DEST_DIR/$REL_PATH"
  else
    echo "Warning: file not exist: $FILE"
  fi
done < "$DEST_DIR/log.txt"

echo "Copy finished: $DEST_DIR"
