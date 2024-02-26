#Update
echo "Updating Codespace..."
sudo apt-get update > /dev/null
echo "Codespace updated successfully!"
sleep 0.5
#Upgrade
echo "Upgrading Codespace..."
sudo apt-get upgrade -y > /dev/null
echo "Codespace upgraded successfully!"
#Install Rust
echo "Installing cargo"
curl https://sh.rustup.rs -sSf | sh > /dev/null
echo "Cargo installed successfuly!"
#Install Go
echo "Installing go!"
wget https://go.dev/dl/go1.22.0.linux-amd64.tar.gz > /dev/null
sudo tar -C /usr/local -xzf go1.22.0.linux-amd64.tar.gz > /dev/null
echo "Go installed successfuly"
echo "Adding Go to path"
export PATH=$PATH:/usr/local/go/bin
#Installing/Updating Python
sudo apt-get install python3 -y > /dev/null
ver=$(python3 --version)
echo "Your python version is"
echo $ver
#Cleaning junk download files
echo "cleaning up"
sudo rm go1.22.0.linux-amd64.tar.gz
#Updating Shell
echo "Updating shell..."
source ~/.bashrc
echo "Shell updated successfuly!"