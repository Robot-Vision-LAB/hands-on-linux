# 네트워크 소켓 정보, 접속 상황 표시하기
- 네트워크 소켓 정보를 표시하려면 ss명령어 또는 netstat 명령어를 사용  
- 네트워크 인터페이스 접속 상황을 확인하려면 ip 명령어의 link 객체를 표시하거나 netstat 명령어를 사용

## ss 명령어
### 사용 예
열려 있는 소켓 접속 상태를 표시
```
$ ss
```
모든 소켓 접속 상태를 표시
```
$ ss -a 
```
모든 TCP 소켓 접속 상태를 표시할 때 네트워크 주소를 그대로 표시
```
$ ss -ant
```
각 프로토콜 통계 정보를 표시
```
$ ss -s
```
### 주요 옵션
| 옵션 | 설명 |
|---|---|
| -s | 각 프로토콜 통계 정보를 표시 |
| -a | 사용 중이 아닌 소켓 정보도 표시 |
| -l | 접속 대기 상태인 소켓만 표시 |
| -n | 네트워크 주소를 숫자로 표시 |
| -t | TCP 소켓 정보를 표시 |
| -u | UDP 소켓 정보를 표시 |
| -x | UNIX 도메인 소켓 정보를 표시 |

## ip 명령어
### 사용 예
네트워크 인터페이스 접속 상태를 표시
```
$ ip -s link
```
### 주요 옵션
| 옵션 | 설명 |
|---|---|
| -s | 상세한 정보를 표시 |
| -f ***family*** | 네트워크 주소 종류 ***family***를 inet, inet6, link 중에서 지정
| -r | 호스트명을 표시 |

## netstat 명령어
### 사용 예
열려 있는 소켓 접속 상태를 표시
```
$ netstat
```
모든 소켓 접속 상태를 표시
```
$ netstat -a 
```
모든 TCP 소켓 접속 상태를 표시할 때 네트워크 주소를 그대로 표시
```
$ netstat -ant
```
각 프로토콜 통계 정보를 표시
```
$ netstat -s
```
네트워크 인터페이스 접속 상태를 표시
```
$ netstat -i
```

### 주요 옵션
| 옵션 | 설명 |
|---|---|
| -i | 네트워크 인터페이스 접속 상태 관련 정보를 표시 |
| -r | 라우팅 테이블을 표시 |
| -s | 각 프로토콜 통계 정보를 표시 |
| -a | 사용 중이 아닌 소켓 정보도 표시. -i 옵션과 함께 지정하면 각 네트워크 인터페이스 및 ip 주소에 대해 사용 중인 모든 멀티케스트 주소를 표시 |
| -i | 접속 대기 상태인 소켓만 표시 |
| -n | 네트워크 주소를 숫자로 표시 |
| -t | TCP 소켓 정보를 표시 |