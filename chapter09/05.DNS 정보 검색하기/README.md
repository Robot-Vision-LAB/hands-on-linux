# DNS 정보 검색하기

인터넷에서 도메인명은 DNS로 관리한다. DNS 서버에서 IP 주소같은 호스트 관련 정보를 취득하려면 dig 명령어를 사용한다.

> dig [@서버] [도메인명 (-x)] [IP 주소] [쿼리타입]

주요 옵션 | 설명
---|---
-x _address_ | IP주소가 _address_ 인 호스트의 DNS 정보를 검색

쿼리 타입 | 설명
---|---
a | 지정한 호스트의 IP 주소
aaaa | 지정한 호스트의 IPv6 주소
any | 모든 정보
mx | 지정한 도메인의 메일 서버
ns | 지정한 도메인의 공인 네임 서버
ptr | 지정한 IP 주소의 PTR (domain name pointer)
soa | 지정한 도메인의 SOA (Start of a zone of Authority) 레코드
hinfo | 지정한 호스트 관련 정보 (CPU, OS 등)
axfr | 존 전송 정보
txt | 지정한 도메인의 텍스트 정보

### 사용 예

```bash
# DNS 서버 ns.example.com 에 호스트 cask.example.com의 IP 주소를 문의
$ dig @ns.example.com cask.example.com

# DNS 서버 ns.example.com에 IP주소가 192.168.0.13인 호스트명을 문의
$ dig @ns.example.com -x 192.168.0.13
````
