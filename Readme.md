## Dev Tools helpers and notes

# git
git config --global user.email "dwaights"
git config --global user.name "dwaights"

# ssh
ssh-keygen to create ssh keys on local machine

azure devops struggles with cloning

in your .ssh folder create a file called config with the following
```bash
Host ssh.dev.azure.com
    User git
    PubkeyAcceptedAlgorithms +ssh-rsa
    HostkeyAlgorithms +ssh-rsa
```

# run bash script to install common dev tools

curl -s https://raw.githubusercontent.com/douglaswaights/dev-tools/main/install-tools.sh | bash
