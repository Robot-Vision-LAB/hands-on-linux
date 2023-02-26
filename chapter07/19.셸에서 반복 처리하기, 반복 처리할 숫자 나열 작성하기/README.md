# 셸에서 반복 처리하기, 반복 처리할 숫자 나열 작성하기

> `for`문과 `seq`명령어 사용하기

```bash
#!/bin/sh

for name in dir1 dir2 dir3; do
    mkdir $name
done
```

```bash
#!/bin/sh

for i in `seq 1 3`; do
    mkdir dir$i
done
```


