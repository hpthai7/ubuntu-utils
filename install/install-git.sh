sudo apt-get update
sudo apt install -y git || exit 1;
cp .git* ~;
ssh-keygen -t rsa;
