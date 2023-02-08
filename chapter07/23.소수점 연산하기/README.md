# 소수점 연산하기

bc: 소수점 계산 명령어, expr 명령어로는 불가능

~~~shell
$ vi test8.sh
#! /bin/sh

a=5.7
b=3.2

echo $a '*' $b = 'echo "scale=20; $a*$b" | bc'
echo $a / $b = 'echo "scale=20; $a/$b" | bc'

$ ./test8.sh
5.7 * 3.2 = 18.24
5.7 / 3.2 = 1.7812500000000000
~~~
- -l 옵션: 사인과 코사인을 구할 수 있음 'echo "s($a)" | bc -l' 이런식으로 (s(in) or c(os))


|표준 C라이브러리에 정의된 함수||
|---|---|
| s(expr) | 사인 |
| c(expr) | 코사인 |
| l(expr) | 자연로그 |
| e(expr) | 지수 함수 |