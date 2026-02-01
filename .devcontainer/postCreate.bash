# Generate the self-signed SSL certificate.
# It will be valid for 25 years - codepsace is unlikely to live that long.
echo "Generating self-signed SSL certificate..."
rm -rf .devcontainer/ssl #2> /dev/null
mkdir .devcontainer/ssl #2> /dev/null
openssl req -x509 -nodes -newkey rsa:2048 \
  -days 9125 \
  -keyout ".devcontainer/ssl/farmos.key" \
  -out ".devcontainer/ssl/farmos.crt" \
  -subj "/C=US/ST=Development/L=Development/O=FarmData2/OU=Development/CN=localhost" \
  -addext "subjectAltName=DNS:localhost,DNS:farmos,IP:127.0.0.1"
chmod 644 ".devcontainer/ssl/farmos.crt"
chmod 600 ".devcontainer/ssl/farmos.key"
echo "SSL certificate generated."