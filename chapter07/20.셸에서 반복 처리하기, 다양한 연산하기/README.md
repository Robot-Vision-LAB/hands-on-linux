# 셸에서 반복 처리하기, 다양한 연산하기

> `while` 조건에 따라 반복 처리, `expr` 변수 내용을 숫자로 해석해서 사칙 연산한 결과를 돌려줌

```bash
#!/bin/sh

num=1
while [ $num -le 3 ]; do
    echo num is $num
    num=`expr $num + 1`
done
```

```bash
#!/bin/sh

num=1
while :; do
    echo num is $num
    if [ $num -ge 3 ]; then
        break
    fi
    num=`expr $num + 1`
done
```
