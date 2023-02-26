# 텍스트에서 데이터 추출하기

awk: 텍스트에서 데이터를 추출하고 처리

~~~shell
$ ls -l
total 0
-rw-r--r-- 1 lskyl 197609 0 Feb  8 22:03 README.md
-rw-r--r-- 1 lskyl 197609 0 Feb  8 22:07 a.txt
-rw-r--r-- 1 lskyl 197609 0 Feb  8 22:07 b.txt

$ ls -l | awk '{print $9 " " $5}'
README.md 0
a.txt 0
b.txt 0
~~~

~~~
// a.txt 파일
m, 1, 2
f, 2, 1
m, 3, 4
~~~
~~~shell
$ awk -F, '{print $2}' a.txt  // -F다음으로 오는 ,가 필드 구분자임. a.txt에서 ,를 기준으로문자를 나눈 것
 1
 2
 3
~~~

|주요 옵션||
|---|---|
| -F fs | 필드 구분자를 정규 표현식 fs로 설정 |
| -f progfile | 스크립트 파일 progfile을 읽어서 처리 |

## #!/usr/bin/sed -f 또는 #!/usr/bin/awk -f로 시작되는 스크립트 파일
|처리||
|---|---|
| pattern {action} | 레코드가 조건식 pattern을 만족할 때, 액션을 실행 |

|주요 조건식 pattern||
|---|---|
| /regexp/ | 정규 표현식 pattern과 일치하는 레코드에 액션을 실행 |
| BEGIN | 첫 레코드를 읽기 전에 액션을 실행 |
| END | 마지막 레코드를 읽은 후에 액션을 실행 |