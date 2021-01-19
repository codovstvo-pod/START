cd /home
sudo git clone https://github.com/codovstvo-pod/START.git
sudo chmod +x START/startconfig.sh
sudo sed -i -e 's/\r$//' START/startconfig.sh
sudo ./START/startconfig.sh