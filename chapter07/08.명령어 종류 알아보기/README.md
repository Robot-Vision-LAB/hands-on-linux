# 명령어 종류 알아보기

type: 명령어 종류 확인 (셸에 내장된 것, 리눅스에 설치된 것, 단축어로 지정한 것 등)

~~~shell
$ type cat
cat 는/은 /bin/cat

$ type cd
cd is a shell builtin

$ alias ls='ls -F'
$ type ls
ls 은/는 'ls -F'의 별칭
~~~

- cat은 /bin 디렉터리에 존재하는 리눅스 명령어
- cd는 셸 내부 명령어
- ls는 단축어


|주요옵션||
|----|---|
| -a | 지정한 명령어명 관련 모든 종류 정보를 표시 |
| -t | 지정한 명령어명 종류만 표시 |
| -p | 지정한 명령어명 경로를 표시 |
