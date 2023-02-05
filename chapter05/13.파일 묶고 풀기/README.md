# 파일 묶고 풀기

## 주요 옵션

|옵션|설명|
|----|---|
| f file | 아카이브 파일 file을 지정 |
| c | 새로운 아카이브 파일을 작성 |
| r | 지정한 파일을 아카이브 파일에 추가 |
| x | 지정한 파일을 아카이브 파일에 푼다, 파일을 지정하지 않으면 모든 파일을 푼다 |
| t | 지정한 파일을 아카이브 파엘에서 찾아서 있으면 해당하는 파일명을 표시, 파일 지정이 없으면 모두 표시 |
| v | 명령어를 실행할 때 상세한 정보를 표시 |
| J | xz 형식 압축, 압축 해제를 지원 |
| j | bzip2 형식 압축, 압축 해제를 지원 |
| z | gzip 형식 압축, 압축 해제를 지원 |

## 사용 예
file1, file2 파일을 묶어서 아카이브 파일 file.tar을 작성
```
$ tar cf file.tar file1 file2
```
지정한 file3 파일을 아카이브 파일 file.tar에 추가
```
$ tar rf file.tar file3
```
아카이브 파일 file.tar에서 모든 파일을 전개
```
$ tar xf file.tar
```
아카이브 파일 file.tar 내부 목록을 표시
```
$ tar tf file.tar
```
tar 형식 + gzip 형식인 file.tar.gz를 압축 해제 및 전개
```
$ tar zxf file.tar.gz
```
tar 형식 + bzip2 형식인 file.tbz2를 압축 해제 및 전개
```
$ tar jxf file.tbz2
```