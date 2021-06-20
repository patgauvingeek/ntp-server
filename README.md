# ntp-server
A ntp server using NTP-KEY to authenticate

# build

```bash
sudo docker build . --tag ntp 
```

# run

Important: Always start from the same folder otherwize the keys will change.
```bash
sudo docker run --name ntp --rm \
                -v `pwd`/config:/config \
                --publish=123:123/udp \
                ntp
```
