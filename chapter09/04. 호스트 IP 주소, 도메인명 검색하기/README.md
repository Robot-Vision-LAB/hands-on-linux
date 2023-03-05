# 호스트 IP 주소, 도메인명 검색하기

```console
$ host www.google.com
www.google.com has address 142.250.207.100
www.google.com has IPv6 address 2404:6800:400a:813::2004

$ host -v www.google.com
Trying "www.google.com"
;; ->>HEADER<<- opcode: QUERY, status: NOERROR, id: 7645
;; flags: qr rd ra; QUERY: 1, ANSWER: 1, AUTHORITY: 0, ADDITIONAL: 0

;; QUESTION SECTION:
;www.google.com.                        IN      A

...
Received 82 bytes from 168.126.63.1#53 in 42 ms

$ host 142.250.207.100              
100.207.250.142.in-addr.arpa domain name pointer kix06s11-in-f4.1e100.net.
```

## DNS(Domain Name System)

- 도메인 명은 `.`으로 구분하는 여러 도메인으로 이루어져 있다.
- DNS 서버는 도메인명을 IP 주소로 바꿔준다.
- 문의할 DNS 서버는 `/etc/resolv.conf` 파일에 지정되어있다. (DHCP를 사용하는 경우 자동으로 설정)

DNS 서버는 계층적 시스템으로 하나의 DNS 서버에 문의하면 여러 DNS 서버끼리 문의해서 대응하는 도메인을 검색한다.
