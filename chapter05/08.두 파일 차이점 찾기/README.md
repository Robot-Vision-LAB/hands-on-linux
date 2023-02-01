# 두 파일 차이점 찾기

diff: 두 파일(디렉터리)의 차이점 찾음

~~~
# south1 textfile
Alabama
Lousiana
Mississippi
~~~

~~~
# south1 textfile
Alabama
Texas
Mississippi
~~~

~~~shell
$ diff south1 south2
2c2
< Lousiana
---
> Texas
~~~

- 2c2, (south1의  두 번째 줄)(교환, change)(south2의 두 번째 줄)

|주요 옵션 ||
|----|---|
|-i|대소문자 차이를 무시|
|-r|서브 디렉터리도 비교|
|-s|두 파일 내용이 같으면 같다는 정보를 표시|
|-b|줄 끝에 있는 공백 문자 차이 무시|
|-w|모든 공백 문자 차이 무시|
|-B|빈 줄 개수 차이 무시|
|-q|파일 내용 일치 여부만 표시|
|-u|통합 diff 현식으로 출력|

~~~shell
$ diff -u south1 south2
--- south1        2023-02-01 21:22:29.12314351 +0900
+++ south2        2023-02-01 21:22:40.14135513 +0900
@@ -1, 4  +1,4 @@
Alabama
-Lousiana
+Texas
Mississippi
~~~
- diff 통합 형식이란, 수정한 내용을 파악하기 쉽도록 파이점이 존재하는 줄의 앞뒤 줄도 포함해서 출력함. 삭제된 줄은 - 마이너스, 추가된 줄은 + 플러스.