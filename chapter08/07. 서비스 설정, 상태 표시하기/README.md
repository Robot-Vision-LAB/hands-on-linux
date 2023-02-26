# 서비스 설정, 상태 표시하기

리눅스에는 cron처럼 항상 동작하는 프로그램이나 서버로 사용될때 사용되는 sshd, httpd, ntpd 같은 프로그램, 부팅시 동작하는 프로그램들이 있음.
서버 프로그램이나 부팅시 시작하는 프로그램을 서비스 라고 부른다.

## 우분투, 데비안

```console
$ service
```

## CentOS, 페도라

`service` 명령어도 사용 가능하지만 아래의 명령어를 더 추천함.

```console
$ systemctl
```

### service 사용하기

서비스 전체 확인하기.

```console
$ service --status-all
[ + ] acpid
[ + ] apparmor
[ + ] ssh
```

`+`기호는 동작중인 서비스를 의미한다.


```console
$ service ssh status
ssh start / running, process 4443
```

중지나 시작은 stop, start 옵션을 이용한다.

```console
# service ssh stop
# service ssh start
```

`-a` 옵션을 사용하면 비활성화나 동작하지 않는 서비스도 표시할 수 있다.


### systemctl 사용하기

```console
$ systemctl status sshd
• sshd.service - OpenSSH server daemon
  Loaded: loaded (∕usr∕lib∕systemd∕system∕sshd.service; enabled; vendor preset: enabled)
  Active: active (running) since Sun 2020-12-01 02:09:29 JST; 13h ago 
    Docs: man:sshd(8) 
          man:sshd_config(5)
Main PID: 894 (sshd) 
  Tasks: 1 (limit: 11512)
  Memory: 1.8M
  CGroup: /system.slice/sshd.service
    └ 894 ∕usr∕sbin∕sshd -D -oCiphers=aes256-gcmΘ
```

중지는 stop을 사용한다.

```console
# systemctl start sshd
```
