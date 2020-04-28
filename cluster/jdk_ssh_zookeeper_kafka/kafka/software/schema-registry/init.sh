mkdir -p ~/software/schema-registry

sudo apt-get -y install unzip

dest=~/software/schema-registry
zip=/vagrant/software/schema-registry/schema-registry-2.x.zip
unzip -d "$dest" "$zip" && f=("$dest"/*) && mv "$dest"/*/* "$dest" && rmdir "${f[@]}"

cp /vagrant/software/schema-registry/conf/* ~/software/schema-registry/config/

chmod -R +x ~/software/schema-registry/bin