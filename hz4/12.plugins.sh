
mkdir -p /opt/cni/bin/

pushd ~/git
    git clone https://github.com/containernetworking/plugins.git containernetworking_plugins
popd

pushd ~/git/containernetworking_plugins
    ls
    bash ./build_linux.sh
popd

pushd ~/git/containernetworking_plugins/bin
    ls
    sleep 2s
    cp -r static /opt/cni/bin/
popd
