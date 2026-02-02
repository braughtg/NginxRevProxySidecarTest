sudo chgrp docker /var/run/docker.sock

docker ps | grep "rev_proxy"

PROXY_RUNNING=$(docker ps | grep "rev_proxy")
echo "$PROXY_RUNNING"

if [ -z "${PROXY_RUNNING}" ];
then
  echo "Starting reverse proxy..."
  docker start rev_proxy
  echo "Started."
fi

echo "All ready to go!"
PROXY_PORT=$(docker port rev_proxy | cut -d':' -f2 | head -1)
echo "Proxy is running on port ${PROXY_PORT}."

URL="https://${CODESPACE_NAME}-${PROXY_PORT}.app.github.dev"
echo "URL for reverse proxy is: ${URL}"

