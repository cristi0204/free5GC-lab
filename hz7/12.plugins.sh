cd /
git clone https://github.com/containernetworking/plugins.git
ls
cd plugins/
ls
bash ./build_linux.sh

sleep 2s
cd /plugins/bin
ls
sleep 2s
cp -r static /opt/cni/bin/
