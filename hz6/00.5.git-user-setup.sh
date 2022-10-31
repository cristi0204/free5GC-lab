# generate private key
ssh-keygen -t rsa -C "aos6"

# last step that has to be copied manually
apt-get update && apt-get install git -y

git config --global user.email "peter@neux.io"
git config --global user.name "Peter Styk"

mkdir ~/git
pushd ~/git 
    git clone git@gitlab.com:atosnet/cluster-5g.git
popd