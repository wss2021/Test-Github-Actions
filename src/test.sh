EXPECTED="HEllo, Test"
OUTPUT=$(node -e "console.log(require'/src/app')('Test'))")
if [ "$OUTPUT" == "$EXPECTED"]; then
echp "Test Passed"
exit 0
else
echo "Test faild! Expected '$EXPECTED' but got '$OUTPUT'"
exit 1