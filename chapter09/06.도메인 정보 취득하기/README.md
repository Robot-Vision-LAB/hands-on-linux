# 도메인 정보 취득하기

도메인명은 국제인터넷주소관리기구 (ICANN) 가 관리한다. ICANN이 관리하는 WHOIS 데이터베이스에서 도메인 정보를 취득하려면 whois 명령어를 사용한다.

> whois [옵션] 도메인명

주요 옵션 | 설명
---|---
-h _server_ | 검색에 사용할 서버로 _server_ 를 지정

### 사용 예

```bash
# KISA/KRNIC WHOIS 서버인 whois.kisa.or.kr 에서 example.co.kr 도메인 정보를 취득
$ whois -h whois.kisa.or.kr example.co.kr
```
