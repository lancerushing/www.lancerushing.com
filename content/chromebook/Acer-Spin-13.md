



Hugo: https://github.com/gohugoio/hugo/releases


sudo apt install awscli make tmux git-cola

tar xzvf hugo_extended_0.55.6_Linux-64bit.tar.gz 
sudo mv hugo /usr/local/bin



 == Install Go

 https://golang.org/


curl -O https://dl.google.com/go/go1.12.7.linux-amd64.tar.gz
sudo tar -C /usr/local -xzf go1.12.7.linux-amd64.tar.gz 

echo 'export PATH=$PATH:/usr/local/go/bin' >> ~/.profile

echo '
export PATH=$PATH:/usr/local/go/bin
export PATH=$PATH:$(go env GOPATH)/bin
export GOPATH=$(go env GOPATH)
' >> ~/.profile


mkdir -p  $GOPATH/src/github.com/$USER/
cd $GOPATH/src/github.com/$USER/


== Install node JS


https://nodejs.org/en/download/

mdkir ~/bin
tar -C ~/bin/ -xf node-v10.16.0-linux-x64.tar.xz
cd ~/bin
ln -s node-v10.16.0-linux-x64/ node

echo '
export PATH=$PATH:$HOME/node/bin
' >> ~/.profile




== Buffalo

```bash
cd /tmp
wget https://github.com/gobuffalo/buffalo/releases/download/v0.14.7/buffalo_0.14.7_linux_amd64.tar.gz
tar -xvzf buffalo_0.14.7_linux_amd64.tar.gz
sudo mv buffalo /usr/local/bin/buffalo
```

