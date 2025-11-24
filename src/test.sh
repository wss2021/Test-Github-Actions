#!/bin/bash

#src/test.sh
echo "Running tests..."
# ضع أوامر الاختبار هنا، مثلاً:
node src/app.js

EXPECTED="HEllo, Test!"

OUTPUT=$(node -e "console.log(require('./src/app')('Test'))")

if [ "$OUTPUT" == "$EXPECTED" ]; then

echo "Test Passed"

exit 0

else

echo "Test faild! Expected '$EXPECTED' but got '$OUTPUT'"

exit 1