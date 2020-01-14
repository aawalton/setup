## Setup Instructions

### Connect to GitHub

#### Generate SSH Key
```bash
mkdir ~/.ssh/
ssh-keygen -f ~/.ssh/id_rsa -t rsa -b 4096 -N ''
cat ~/.ssh/id_rsa.pub
```

#### Add SSH Key to GitHub Developer Settings

### Clone the dotfiles repo
```bash
mkdir ~/repos/
cd ~/repos/
git clone git@github.com:aawalton/dotfiles.git
```

### Set up Symlinks
```bash
cd ~/repos/dotfiles
sudo chmod +x symlinks
./symlinks
source ~/.bashrc
```
