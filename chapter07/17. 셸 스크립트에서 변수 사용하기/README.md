# 셸 스크립트에서 변수 사용하기

셸 스크립트에서 `=`를 사용해서 변수를 사용할 수 있다.

```bash
#!/bin/sh

a=abc 
str=def

echo $a
echo $str
echo ${a}ABC${str}

b=${a}${str}ghi 
echo $b
```

```console
$ ./test.sh
abc
def
abcABCdef
abcdefghi
```

> 변수 할당시 `=`좌우에 공백이 있으면 안된다.

## 인수 사용하기

셸 스크립트에서도 변수를 인수로 사용할 수 있다.

```bash
#!/bin/sh

echo 1st argument is $1
echo 2nd argument is $2
echo The number of arguments is $#

shift 
echo 1st arguments is $1
```

```console
$ ./test2.sh arg1 arg2
1st argument is arg1
2nd argument is arg2
The number of arguments is 2
1st arguments is arg2
```

- 인수 개수는 `$#`으로 확인 가능하다.
- `shift` 명령어를 사용하면 변수명이 하나씩 당겨진다.
  - `$2` -> `$1`

## 주요 특수 변수

|변수|설명|
|-|-|
|$0| 셸 스크립트 명|
|$n|n 번째 인수|
|$*|모든 인수 목록|
|$#| 인수 개수|
|$?| 직전에 실행한 명령어 상태 (반환값)|
|$$| 셸 스크립트 프로세스 ID|
|$LINENO|변수를 사용한 줄 번호|
