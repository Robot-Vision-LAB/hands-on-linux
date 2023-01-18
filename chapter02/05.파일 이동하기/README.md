# 파일 이동하기

move 명령어는 이동하려는 원본 파일이 사라진다는 것이 cp 명령어와 다름

cp 명령어는 -r 옵션을 지정했지만 mv 명령어는 옵션 없이 바로 디렉터리도 이동이 가능함

mv 명령어도 cp 명령어와 마찬가지로 -i 옵션을 같이 사용하는 것을 추천

```shell
# file 파일을 dir 디렉터리로 옮김
$ mv file dir

# file1 file2 파일과 dir1 디렉터리를 한꺼번에 dir 디렉터리로 옮김
$ mv file1 file2 dir1 dir 
```