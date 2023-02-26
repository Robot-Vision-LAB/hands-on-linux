# 네트워크 인터페이스 확인, 설정하기

ifconfig: 컴퓨터에 연결된 랜이나 와이파이 같은 네트워크 인터페이스에 할당된 IP주소를 확인하거나 IP주소를 할당 (ip 명령어의 addr 객체를 지정해줘도 됨)


## IP 주소 확인
~~~shell
## 현재 IP주소가 할당된 네트워크 인터페이스 표시
$ ip addr show
$ ifconfig
~~~

- IP주소는 유일한 주소로 IANA(Ineternet Assigned Number Authority)가 관리
- IP주소는 네트워크 주소와 호스트 주소로 구성됨
- 기업이나 가정 내 LAN에서 자유롭게 사용하는 프라이빗 IP 주소는 호스트가 직접 인터넷에 접속할 수 없지만 NAT(Network Address Transfer) 기술을 사용해서 글로벌 IP주소가 할당된 호스트를 통해 인터넷에 접속 가능


## IP 주소 할당
~~~shell
## 컴퓨터에 이더넷 네트워크 어댑터가 존재하고 해당 인터페이스명이 eth0이라고 가정하고, 프라이빗 IP주소인 10.0.2.12(네트워크 주소 길이 24비트인 서브넷 마스크 255.255.255.0)을 설정하기. 슈퍼유저 권한으로 ip addr 명령어 또는 ifconfig명령어 사용가능

$ ip addr flush dev eth0  # eth0 인터페이스 주소를 모두 삭제
$ ip addr add 10.0.2.12/24 dev eth0  # eho0 인터페이스에 IP 주소 할당

$ ipconfig eth0 inet 10.0.2.12 netmask 255.255.255.0  # ipconifg 명령어 사용
~~~

- 요즘엔 DHCP(Dynamic Host Configuration Protocol) 기능이 있어서 호스트에 동적 IP주소가 할당됨 (수동 IP를 설정할 일이 거의 없음)
- 수동 IP설정을 해보려면 dhclient -r eth0 명령어를 실행해서 DHCP 를 해제해야함. (DHCP를 다시 유효화하려면 ip addr flush dev eth0로 IP주소를 삭제한 후 dhclient eth0 명령어 실행)


## 네트워크 인터페이스 설정

nmcli: 네트워크 인터페이스 설정 변경

컴퓨터를 부팅할 때, 호스트에 고정 IP주소를 할당하거나 DHCP를 통해 동적으로 할당받으려면, 부팅 스크립트를 설정해야함
보통은 NetworkManager 데몬이 네트워크 인터페이스를 자동 설정하므로 DHCP를 사용한다면 설정이 필요 없음


## ip 주요 옵션
| 옵션 | 설명 |
|---|---|
| -s | 상세 정보를 표시 |
| -f family | 네트워크 주소 종류 family를 inet, inet6, link 중에서 지정 |
| -r | 호스트명 표시 |

## 주요 옵션
| 옵션 | 설명 |
|---|---|
| -a | 모든 인터페이스 설정 표시 |

## 주요 옵션
| 옵션 | 설명 |
|---|---|
| show dev device | device 디바이스 주소 표시 |
| add addr dev device | device 디바이스에 addr 주소 추가 |
| del addr dev device | device 디바이스에서 addr 주소 삭제 |
| flush dev device | device 디바이스 주소 일괄 삭제 |


