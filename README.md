## Setup Instructions

### Connect to GitHub

#### Generate SSH Key
```bash
mkdir ~/.ssh/
ssh-keygen -f ~/.ssh/id_rsa -t rsa -b 4096 -N ''
cat ~/.ssh/id_rsa.pub
```

#### Add SSH Key to GitHub Developer Settings
#### Setup git cli
```bash
git config --global user.name "Alan Walton"
git config --global user.email "aawalton@gmail.com"
```


### Clone the dotfiles repo
```bash
mkdir ~/repos/
cd ~/repos/
git clone git@github.com:aawalton/setup.git
```

### Set up Symlinks
```bash
cd ~/repos/setup/lib/install
sudo chmod +x symlinks
./symlinks
source ~/.bashrc
```
