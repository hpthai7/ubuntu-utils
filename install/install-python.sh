echo "What is the python version?"
read version

sudo apt-get install -y build-essential checkinstall
sudo apt-get install -y libreadline-gplv2-dev libncursesw5-dev libssl-dev libsqlite3-dev tk-dev libgdbm-dev libc6-dev libbz2-dev
sudo apt-get install -y bzip2 libbz2-dev zlib1g-dev libssl-dev openssl libgdbm-dev libgdbm-compat-dev liblzma-dev libreadline-dev libncursesw5-dev libffi-dev uuid-dev

DIR="~/Downloads/python"
mkdir -p "${DIR}" 
cd "${DIR}"
wget https://www.python.org/ftp/python/$version/Python-$version.tgz
tar -xvf Python-$version.tgz
cd Python-$version
./configure
make
sudo checkinstall
cd ~
