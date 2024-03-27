# see https://docs.nvidia.com/deeplearning/cudnn/install-guide/index.html#package-manager-ubuntu-install for latest cuDNN version
cudnn_ver="8.9.4.*-1+cuda11.8"
# update system
apt update
apt upgrade -y
# install Linux tools and Python 3
apt install software-properties-common wget curl python3-dev python3-pip python3-wheel python3-setuptools -y
# install Python packages
python3 -m pip install --upgrade pip
pip3 install --user -r .devcontainer/requirements.txt
# update CUDA Linux GPG repository key
wget https://developer.download.nvidia.com/compute/cuda/repos/ubuntu2204/x86_64/cuda-keyring_1.0-1_all.deb
dpkg -i cuda-keyring_1.0-1_all.deb
rm cuda-keyring_1.0-1_all.deb
# install cuDNN
wget https://developer.download.nvidia.com/compute/cuda/repos/ubuntu2204/x86_64/cuda-ubuntu2204.pin
mv cuda-ubuntu2204.pin /etc/apt/preferences.d/cuda-repository-pin-600
apt-key adv --fetch-keys https://developer.download.nvidia.com/compute/cuda/repos/ubuntu2204/x86_64/3bf863cc.pub
add-apt-repository "deb https://developer.download.nvidia.com/compute/cuda/repos/ubuntu2204/x86_64/ /" -y
apt update
apt install libcudnn8=${cudnn_ver}
apt install libcudnn8-dev=${cudnn_ver}
# install additional recommended packages
apt install zlib1g g++ freeglut3-dev libx11-dev libxmu-dev libxi-dev libglu1-mesa libglu1-mesa-dev libfreeimage-dev -y
alias python=python3
# clean up
pip3 cache purge
apt autoremove -y
apt clean