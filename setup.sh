# Make sure to use x86_64 alpine
# Make sure to enable community repo
apk update
apk upgrade
apk add docker
apk add traefik
rc-update add docker default
service docker start
apk add docker-cli-compose
pvcreate vg1 /dev/sdb 
vgcreate vg1 /dev/sdb
lvcreate -n media -L 120G vg1
mkfs.ext4 /dev/vg1/media
docker-compose up -d
