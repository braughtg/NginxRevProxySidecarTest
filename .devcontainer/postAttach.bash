sudo chgrp docker /var/run/docker.sock

PROXY_PORT=$(docker port rev_proxy | cut -d':' -f2 | head -1)
echo "Proxy is using: https://localhost:${PROXY_PORT}"

echo "All ready to go!"