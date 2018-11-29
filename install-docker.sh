# Amazon changes a bunch of stuff in Linux 2. No longer using 'yum'
# See: https://aws.amazon.com/amazon-linux-2/release-notes/

### Docker CE Install

sudo amazon-linux-extras install docker
sudo service docker start
sudo usermod -a -G docker ec2-user

# Make docker auto-start
sudo chkconfig docker on

# Reboot to verify it all loads fine on its own.
sudo reboot

### docker-compose install

# Install docker-compose to build the kafka proxy cluster from a single definition file.
sudo curl -L https://github.com/docker/compose/releases/download/1.22.0/docker-compose-$(uname -s)-$(uname -m) -o /usr/local/bin/docker-compose

# Fix permissions after download: 
sudo chmod +x /usr/local/bin/docker-compose

# Verify success: 
docker-compose version

