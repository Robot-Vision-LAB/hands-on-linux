# 셸 스크립트


명령어를 텍스트파일로 작성해서 한번에 실행할 수 있다.
이러한 기능을 **셸 스크립트**라고 한다.

스크립트의 시작은 다음과 같이 `test.sh`를 작성한다.

```bash 
#!/bin.sh

ls
pwd
.
.
.
```

<br/>

실행은 아래와 같이 한다.

```console
$ hands-on-linux/chapter07/16.\ 셸\ 스크립트/test.sh

$ ./test.sh

$ bash test.sh

$ sh test.sh
```
