# 인터넷 경로 설정하기

route: 인터넷으로 호스트와 통신하려면 라우팅 테이블(경로표)가 필요함. 라우팅 테이블을 설정, 표시할 수 있음 (ip 명령어로 route 객체 사용가능)

## ip 주요 옵션
| 옵션 | 설명 |
|---|---|
| show dev device | device 디바이스의 라우팅 테이블 표시 |
| get addr | addr 주소를 향한 경로를 표시 |
| add addr1 via \| addr2 dev device | device 디바이스의 라우팅 테이블에 addr1을 향한 경로 addr2를 추가 |

## route 주요 옵션
| 옵션 | 설명 |
|---|---|
| -n | 호스트명이 아니라 IP주소로 표시 |
| add entry | 라우팅 테이블에 entry 추가 |
| del entry | 라우팅 테이블에 entry 삭제 |
| -net target | 엔트리 네트워크를 target으로 지정 |
| -host target | 엔트리 호스트를 지정 |
| netmask mask | 엔트리 서브넷 마스트를 지정 |
| dev interface | 네트워크 인터페이스 경로 설정 |
