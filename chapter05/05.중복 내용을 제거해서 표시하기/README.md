# 중복 내용을 제거해서 표시하기

uniq: 텍스트 파일 내에서 중복을 제거해서 표시함. 같은 내용이 앞뒤 줄에 연소갷서 존재하면 그중 하나만 표시함

~~~
# north textfile
Minnesota
Montana
Montana
Minnesota
~~~
~~~
$ uniq north
Minnesota
Montana
Minnesota
~~~

|주요옵션||
|----|---|
| -u | 중복되지 않은 줄만 출력 |
| -d | 중복된 줄만 출력 |
| -c | 중복된 줄 수를 각 줄 옆에 표시 |
| -f n | 각 줄 시작 위치에서 n개 필드만큼 건너뛰어서 비교 (공백과 탭 문자가 필드 구분 문자) |
| -s n | 각 줄 시작 위치에서 n개 문자를 건너뛰어서 비교 |
| -w n | 각 줄에서 n개 문자를 비교 |