# 셸 스크립트 옵션 처리하기

> `getops`사용하여 옵션 처리

```bash
#!/bin/sh

FLAG=0
while getopts ab: OPT; do
    case $OPT in
        a) FLAG=1 ;;
        b) VALUE=$OPTARG ;;
    esac
done
shift `expr $OPTIND -1`

echo FLAG: $FLAG
echo VALUE: $VALUE
echo '$1:' $1
```
