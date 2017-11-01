ATTACHMENT="hello there" CONTENT="greeting" USER_ID=

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/posts"
curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --data '{
    "post": {
      "attachment": "'"${ATTACHMENT}"'",
      "content": "'"${CONTENT}"'",
      "user_id": "'"${USER_ID}"'"
    }
  }'

echo
