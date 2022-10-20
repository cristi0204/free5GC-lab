export PATH=$PATH:/usr/local/go/bin
go version

git clone https://github.com/containernetworking/plugins.git ../../containernetworking__plugins
cd ../../containernetworking__plugins && bash ./build_linux.sh && cd bin && cp -r static /opt/cni/bin/
