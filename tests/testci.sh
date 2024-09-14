#!/bin/bash

# Exit on error
set -e

# Find Files
echo "Locating files..."
echo "========================"
if [ -f javascript/javascript.js ]; then
  echo "javascript/javascript.js found"
else
  echo "javascript/javascript.js not found"
  exit 1
fi

if [ -f python/python.py ]; then
  echo "python/python.py found"
else
  echo "python/python.py not found"
  exit 1
fi

if [ -f ruby/ruby.rb ]; then
  echo "ruby/ruby.rb found"
else
  echo "ruby/ruby.rb not found"
  exit 1
fi

echo "Running tests..."
echo "========================"
if [ -f javascript/javascript.test.js ]; then
  echo "Running javascript tests..."
  cd javascript
  npm test >/dev/null 2>&1
  cd ..
  echo "javascript tests passed"
fi

if [ -f python/python.test.py ]; then
  echo "Running python tests..."
  cd python
  python python.test.py > /dev/null 2>&1
  cd ..
  echo "python tests passed"
fi

if [ -f ruby/ruby.test.rb ]; then
  echo "Running ruby tests..."
  cd ruby
  bundle exec ruby ruby.test.rb > /dev/null 2>&1
  cd ..
  echo "ruby tests passed"
fi

echo "Sending webhook..."
echo "========================"
if [ -f config.yml ] && [ -n "$JWT_SECRET" ]; then
  WEBHOOK_URL=$(grep 'webhook_url:' config.yml | awk '{print $2}')
  if [ -n "$WEBHOOK_URL" ]; then
    echo "Creating JWT and sending webhook to $WEBHOOK_URL"
    HEADER=$(echo '{"alg":"HS256","typ":"JWT"}' | base64 | sed s/\+/-/g | sed 's/\//_/g' | sed -E s/=+$//)
    PAYLOAD=$(echo "{\"github_username\":\"$GITHUB_ACTOR\"}" | base64 | sed s/\+/-/g | sed 's/\//_/g' | sed -E s/=+$//)
    hexsecret=$(echo -n "$JWT_SECRET" | xxd -p | tr -d '\n')
    SIGNATURE=$(echo -n "${HEADER}.${PAYLOAD}" | openssl dgst -sha256 -mac HMAC -macopt hexkey:$hexsecret -binary | base64 | sed s/\+/-/g | sed 's/\//_/g' | sed -E s/=+$//)
    JWT="$HEADER.$PAYLOAD.$SIGNATURE"
    curl -X POST -H "Content-Type: application/json" -H "Authorization: Bearer $JWT" $WEBHOOK_URL >/dev/null 2>&1
  else
    echo "Webhook URL not found in config.yml"
    exit 1
  fi
else
  echo "config.yml not found or PRIVATE_KEY_ENV not set"
fi

echo "Verifying JWT..."
echo "========================"
# Read the JWT from config.yml
JWT=$(grep 'jwt:' config.yml | awk '{print $2}')

if [ -z "$JWT" ]; then
  echo "Error: JWT not found in config.yml"
  exit 1
fi

# Split the JWT into its components
IFS='.' read -r header payload signature <<<"$JWT"

# Verify the signature
USER_SIG=$(echo -n "${header}.${payload}" | openssl dgst -sha256 -mac HMAC -macopt hexkey:$hexsecret -binary | base64 | sed s/\+/-/g | sed 's/\//_/g' | sed -E s/=+$//)
if [ "$USER_SIG" != "$signature" ]; then
  echo "Error: Invalid signature"
  exit 1
fi

echo "JWT verification successful"
