# 호스트와 접속 확인하기

`ping` 명령어를 확인해서 서버가 살아있는지 확인.

```console
$ ping www.google.com
ping www.google.com
PING www.google.com (142.250.206.196): 56 data bytes
64 bytes from 142.250.206.196: icmp_seq=0 ttl=56 time=31.987 ms
64 bytes from 142.250.206.196: icmp_seq=1 ttl=56 time=30.673 ms
64 bytes from 142.250.206.196: icmp_seq=2 ttl=56 time=32.047 ms
64 bytes from 142.250.206.196: icmp_seq=3 ttl=56 time=32.006 ms
^C
--- www.google.com ping statistics ---
4 packets transmitted, 4 packets received, 0.0% packet loss
round-trip min/avg/max/stddev = 30.673/31.678/32.047/0.581 ms
```

> `ping`은 ICMP(Internet Control Message Protocol) 프로토콜을 이용하는데 최근에는 보안 문제로 막아둔 서버가 많이 늘어나고 있다.

|옵션|설명|
|-|-|
|-c {count}|count 횟수만큼 패킷 송수신|
