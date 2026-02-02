echo ""
echo "*************************"
echo "This is initialize.bash"
echo ""

# echo "Checking port 80..."
# echo "Checking for docker-pr..."
# sudo lsof -i :80 | grep "docker-pr.*\*:http"
# echo "Checking for codespace..."
# sudo lsof -i :80 | grep "codespace.*\*:http"
# echo ""

echo "Checking port 443..."
echo "Checking all..."
sudo lsof -i :443
echo "Checking for docker-pr..."
#sudo lsof -i :443 | grep "docker-pr.*\*:https" | cut -d' ' -f2
sudo lsof -i :443 | grep "docker-pr.*\*:https"
echo "Checking for codespace..."
sudo lsof -i :443 | grep "codespace.*\*:https"
#PID=$(sudo lsof -i :443 | grep "codespace.*\*:https" | cut -d' ' -f2)
#echo "PID=$PID"
#echo "Killing PID=$PID..."
#sudo kill -9 "$PID"
#echo "Dead."
echo "Checking all again..."
sudo lsof -i :443
echo ""
echo "*************************"
