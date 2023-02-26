# 시스템 정지, 다시 시작

## 시스템 정지

1분 후 종료
```console 
$ shutdown -P 1
```

종료
```console
$ poweroff
```

> 환경에 따라서 root 권한이 필요한 경우 `sudo`를 사용한다.


## 다시 시작

1분 후 다시 시작
```console
$ shutdown -r 1
```

다시 시작
```console
$ reboot
```


## `shutdown` 주요 옵션

|옵션|설명|
|-|-|
|-k|경고 메시지만 프로세스로 전송|
|-r|다시시작 = `reboot`|
|-P|종료 = `poweroff`|
|-c|예정된 셧다운을 취소|

### 시간 표시

|시간|설명|
|-|-|
|now|지금 바로 셧다운|
|+n|n분 후 셧다운|
|hh:mm|hh시 mm분에 셧다운 (24시간 표기)|
