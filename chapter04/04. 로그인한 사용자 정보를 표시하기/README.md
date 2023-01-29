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

