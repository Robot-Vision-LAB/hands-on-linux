# 셸 변수에 값 설정하기
셸 변수에 값을 설정하는 방법

## 사용 예
셸 변수 ABC에 CFG로 값을 설정
```
$ ABC=CFG
```
셸 변수 ABC를 삭제
```
$ unset ABC
```

## 명령어 검색 경로 설정하기
```
$ echo $PATH
/usr/local/bin:/usr/bin:/bin
```
```
$ PATH=$HOME/bin:$HOME/pub/bin:$PATH
```