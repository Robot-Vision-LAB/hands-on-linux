# 명령어에 단축어 지정하기

alias: 단축어, 명령어의 옵션과 인수를 포함해서 별명을 지정

~~~shell
// ls -F 명령어와 옵션 조합을 ls라는 단축어로 지정
$ ls
bottle cornfield tequila.txt
$ alias ls='ls -F'
$ ls
bottle cornfield tequila.txt
~~~

- 단순히 alias를 실행하면, 현재 단축어를 모두 표시



unalias: 설정한 단축어 해제

~~~shell
$ unalias ls
// 설정된 모든 단축어 해제
$ unalias -a
~~~
- 단축어 앞에 \를 붙이면 단축어가 무시된 후 출력됨

~~~shell
// 이름이 ~로 끝나는 파일을 홈 디렉터리 이하 모든 디렉터리에서 찾아 삭제하는 find 명령어 조합을 rmtilde 단축어로 설정
$ alias rmtilde='find ~ -name "*~" -exec /bin/rm {} \;'
~~~