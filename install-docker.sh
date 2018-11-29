# Amazon changes a bunch of stuff in Linux 2. No longer using 'yum'
# See: https://aws.amazon.com/amazon-linux-2/release-notes/

sudo amazon-linux-extras install docker
sudo service docker start
sudo usermod -a -G docker ec2-user