# Amazon changes a bunch of stuff in Linux 2. No longer using 'yum'
# See: https://aws.amazon.com/amazon-linux-2/release-notes/

sudo amazon-linux-extras install docker
sudo service docker start
sudo usermod -a -G docker ec2-user

# You'll get socket permission errors unless you either reboot or logout/login so the `usermod` command takes effect.
sudo reboot

# Install docker-compose to build the kafka proxy cluster from a single definition file.
sudo curl -L https://github.com/docker/compose/releases/download/1.22.0/docker-compose-$(uname -s)-$(uname -m) -o /usr/local/bin/docker-compose

# Fix permissions after download: 
sudo chmod +x /usr/local/bin/docker-compose

# Verify success: 
docker-compose version

