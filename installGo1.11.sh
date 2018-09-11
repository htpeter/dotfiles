curl -O https://dl.google.com/go/go1.11.linux-amd64.tar.gz
sha256sum go1.11.linux-amd64.tar.gz
tar -xvf go1.11.linux-amd64.tar.gz

chown -R root:root ./go
mv go /usr/local
echo "export GOPATH=$HOME/go" >> ~/.bashrc
echo "export PATH=$PATH:/usr/local/go/bin:$GOPATH/bin" >> ~/.bashrc

mkdir ~/go && cd ~/go
echo 'src pkg bin' | xargs mkdir

echo "Run source ~/.bashrc"
