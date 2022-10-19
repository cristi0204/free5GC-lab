cd /
wget https://go.dev/dl/go1.17.linux-amd64.tar.gz
tar -xvzf go1.17.linux-amd64.tar.gz
ls
cp go /usr/local/
export PATH=$PATH:/usr/local/go/bin
go version
