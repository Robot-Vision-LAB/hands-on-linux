# 로그인한 사용자 정보를 표시하기

```shell
$ w
USER     TTY      FROM              LOGIN@  IDLE WHAT
jonghyeok console  -                04 123  24days -
jonghyeok s000     -                토18       - w
jonghyeok s004     -                18 123  2days labelme
```

w 뒤에 사용자명을 넣어주면 해당 사용자의 정보만 볼 수 있다.

```
$ w jonghyeok
USER     TTY      FROM              LOGIN@  IDLE WHAT
jonghyeok console  -                04 123  24days -
jonghyeok s000     -                토18       - w
jonghyeok s004     -                18 123  2days labelme
```

|옵션|설명|
|-|-|
|-h|헤더 표시하지 않음|
|-f|로그인 호스트명을 표시하거나 표시하지 않는다.|
|-s|표시 정보를 줄인다.|
