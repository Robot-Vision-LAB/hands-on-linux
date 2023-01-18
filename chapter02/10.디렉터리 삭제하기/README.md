# 디렉터리 삭제하기

## 디렉터리 삭제
디렉터리가 비어있는 경우에만 삭제 가능
```shell
$ rmdir {dir_path}
```

## 디렉터리가 비어있지 않은 경우
```shell
# recursive 하게 삭제.
$ rm -r {dir_path}

# 삭제 확인이 필요한 경우.
$ rm -ri {dir_path}
examine files in directory sandbox? 
remove sandbox? 

# 삭제 확인이 필요하지 않은 경우.
$ rm -rf {dir_path}
```
