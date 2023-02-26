# 안전하게 파일 전송하기

scp or sftp: 통신 내용을 암호화해서 원격 호스트 사이에 안전하게 파일을 전송

~~~shell 
# barrel.exmple.com 호스트에 있는 maltman 사용자의 홈디렉터리에서 cocktail 파일을 현재 디렉터리로 복사하기
$ scp maltman@barrel.example.com:~/cocktail .
~~~
- 원격 접속 경로 인수: user@hostname:path



## scp 주요 옵션
| 옵션 | 설명 |
|---|---|
| -r | 디렉터리를 통째로 복사 |
| -p | 날짜나 파일 관련 정보를 가능한 한 그대로 복사 |

~~~shell
# remote-host 호스트의 user사용자 홈 디렉터리에 있는 file을 로컬 호스트의 현재 디렉터리에 전송
$ scp user@remote-host:file .

# remote-host 호스트에 안전하게 접속
$ sftp remote-host
~~~

