#!/bin/bash
echo "Running tests..."

EXPECTED="Hello, Test!"
OUTPUT=$(node -e "console.log(require('./src/app')('Test'))")

if [ "$OUTPUT" == "$EXPECTED" ]; then
  echo "✅ Test Passed"
  exit 0
else
  echo "❌ Test failed! Expected '$EXPECTED' but got '$OUTPUT'"
  exit 1
fi
