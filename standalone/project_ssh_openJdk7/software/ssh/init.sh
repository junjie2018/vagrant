# 配置ssh
cp /vagrant/software/ssh/.ssh/id_rsa ~/.ssh/id_rsa
cp /vagrant/software/ssh/.ssh/id_rsa.pub ~/.ssh/id_rsa.pub
cat ~/.ssh/id_rsa.pub >> ~/.ssh/authorized_keys

chmod 600 ~/.ssh/id_rsa

echo '
    StrictHostKeyChecking no
    UserKnownHostsFile /dev/null
' | sudo tee -a /etc/ssh/ssh_config

