# ntp-server
A ntp server using NTP-KEY to authenticate

# build
sudo docker build . --tag ntp 

# run
sudo docker run --name ntp --rm \
                -v `pwd`/config:/config \
                --publish=123:123/udp \
                ntp
