#!/bin/bash

#install lazy git
LAZYGIT_VERSION=$(curl -s "https://api.github.com/repos/jesseduffield/lazygit/releases/latest" | grep '"tag_name":' |  sed -E 's/.*"v*([^"]+)".*/\1/')
curl -Lo lazygit.tar.gz "https://github.com/jesseduffield/lazygit/releases/latest/download/lazygit_${LAZYGIT_VERSION}_Linux_x86_64.tar.gz"
sudo tar xf lazygit.tar.gz -C /usr/local/bin lazygit

# k8s (assume docker present)

#k3d
curl -s https://raw.githubusercontent.com/k3d-io/k3d/main/install.sh | bash
#kubectl
curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"
chmod +x kubectl
sudo mv kubectl /usr/bin/
#k9s
curl -Lo k9s.tar.gz "https://github.com/derailed/k9s/releases/download/v0.26.6/k9s_Linux_x86_64.tar.gz"
sudo tar xf k9s.tar.gz -C /usr/local/bin k9s


