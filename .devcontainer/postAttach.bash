sudo chgrp docker /var/run/docker.sock

echo "All ready to go!"
PROXY_PORT=$(docker port rev_proxy | cut -d':' -f2 | head -1)
echo "Proxy is running on port $PROXY_PORT."
URL="https://${CODESPACE_NAME}-${PROXY_PORT}.app.github.dev"
echo "Click here to open: $URL"

