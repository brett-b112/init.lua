# Setup Guide for neovim config for a fresh install of mint linux 21

### 1
* clone repo into .cofig file *(typically located in /home/username/)*
```
    git clone git@github.com:brett-b112/nvim.git
```

### 2
* fully instal packer for neovim
* visit the website https://github.com/wbthomason/packer.nvim
* run the install command
```
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim
```

### 3 
* install nodejs and node
* install using the guide for linux distros https://github.com/nodesource/distributions
```
sudo apt install curl
```
```
sudo apt-get update
sudo apt-get install -y ca-certificates curl gnupg
sudo mkdir -p /etc/apt/keyrings
curl -fsSL https://deb.nodesource.com/gpgkey/nodesource-repo.gpg.key | sudo gpg --dearmor -o /etc/apt/keyrings/nodesource.gpg
```
```
NODE_MAJOR=20
echo "deb [signed-by=/etc/apt/keyrings/nodesource.gpg] https://deb.nodesource.com/node_$NODE_MAJOR.x nodistro main" | sudo tee /etc/apt/sources.list.d/nodesource.list
```
```
sudo apt-get update
sudo apt-get install nodejs -y
```
* this ensures that node is up-to-date as node install via apt is depracated
* uinstall instructionsn are listed on the github at the top of this step

  ### 4
* install g++
```
sudo apt install g++
```
### 5
* go to packer.lua and source and PackerSynce to ensure that all plugins are now up-to-date and operationa
* via lua/brett/packer.lua 
