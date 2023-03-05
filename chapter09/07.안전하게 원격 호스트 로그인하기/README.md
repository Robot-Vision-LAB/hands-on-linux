# 안전하게 원격 호스트 로그인하기

네트워크를 경유하는 통신 내용을 암호화해서 안전하게 다른 컴퓨터에 로그인하려면 ssh 명령어를 사용한다.

> ssh [로그인사용자명@] 상대호스트명 [명령어]
>
> ssh [-l 로그인사용자명] 상대호스트명 [명령어]

주요 옵션 | 설명
---|---
-l _user_ | 원격 호스트에 접속할 사용자명이 현재 호스트 사용자명과 다르면 로그인할 사용자명으로 _user_ 를 지정

```bash
# remote-host 호스트에 로그인
$ ssh remote-host

# remote-host 호스트에 smalt 사용자명으로 로그인
$ ssh smalt@remote-host
$ ssh -l smalt remote-host

# remote-host 호스트에서 command 명령어를 실행
$ ssh remote-host command
```
