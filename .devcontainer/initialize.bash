echo ""
echo "*************************"
echo "This is initialize.bash"
echo ""

echo "Checking port 80..."
echo "Checking for docker-pr..."
sudo lsof -i :80 | grep "docker-pr.*\*:http" | cut -d' ' -f2
echo "Checking for codespace..."
sudo lsof -i :80 | grep "codespace.*\*:http" | cut -d' ' -f2
echo ""

echo "Checking port 443..."
echo "Checking for docker-pr..."
sudo lsof -i :443 | grep "docker-pr.*\*:https" | cut -d' ' -f2
echo "Checking for codespace..."
sudo lsof -i :443 | grep "codesapce.*\*:https" | cut -d' ' -f2

echo ""
echo "*************************"
