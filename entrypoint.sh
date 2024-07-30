#!bin/sh

ssh-keygen -t rsa -b 4096 -C "jamesabcde277@gmail.com"
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_ed25519
cat ~/.ssh/id_ed25519.pub
read -p "add the ssh key to github and press enter to continue"
ssh -T git@github.com