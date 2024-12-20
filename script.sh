
LOG_FILE="/app.log"

EMAIL="s.ali.murtaza1@gmail.com"
if [[ ! -f "$LOG_FILE" ]]; then
  echo "Error: Log file not found."
  exit 1
fi

ERROR_COUNT=$(grep -c "ERROR" "$LOG_FILE")
WARN_COUNT=$(grep -c "WARN" "$LOG_FILE")
INFO_COUNT=$(grep -c "INFO" "$LOG_FILE")

echo "Error Count: $ERROR_COUNT"
echo "Warning Count: $WARN_COUNT"
echo "Info Count: $INFO_COUNT"

if (( ERROR_COUNT > 10 || WARN_COUNT > 10 || INFO_COUNT > 10 )); then
  echo -e "Log Summary:\nERROR: $ERROR_COUNT\nWARN: $WARN_COUNT\nINFO: $INFO_COUNT" | mail -s "Log Alert" "$EMAIL"
fi
