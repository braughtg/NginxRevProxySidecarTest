echo ""
echo "*************************"
echo "This is initialize.bash"
echo ""

echo "Checking port 80..."
sudo lsof -i :80 | grep "*:http"

echo ""

echo "Checking port 443..."
sudo lsof -i :443 | grep "*:https"

echo ""
echo "*************************"
