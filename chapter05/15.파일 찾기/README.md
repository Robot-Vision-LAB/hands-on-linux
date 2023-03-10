# 파일 찾기

## 주요 검색 조건
|옵션|설명|
|----|---|
| -name *name* | 파일명이 *name*인 파일을 검색 |
| -mtime *n* | 갱신 시각이 *n*일 이전인 파일을 검색 |
| -user *user* | 파일 소유자가 *user*인 파일을 검색 |
| -regex *regexp* | 경로명 전체가 정규 표현식 *regexp*와 일치하는 파일을 검색 |
| -path *ptn* | 경로명 전체가 문자열 *ptn*과 일치하는 파일을 검색 |

## 주요 처리 방법
|옵션|설명|
|----|---|
| -print | 검색 결과를 표시(기본값) |
| -print0 | 검색 결과를 null 문자로 나눠서 출력, xargs 명령어를 참조(p.224) |
| -ls | 검색 결과로 찾은 파일 정보를 표시 |
| -exec *command* [*arg*] \\; | 검색 결과로 *command* 명령어를 실행, 인수 *arg*에 {}를 지정하면 검색 결과가 치환되어 들어감 |
| -execdir *command* [*arg*] \\; | -exec 옵션과 같지만 처리 대상 파일이 존재하는 디렉터리로 이동해서 *command* 명령어를 실행한 결과가 됨 |
| -ok *command* [*arg*] \\; | -exec 옵션과 같지만 *command* 명령어를 실행하기 전에 실행 여부를 확인 |

## 사용 예
dir 디렉터리 이하를 검색해서 파일명이 filename인 파일을 찾기
```
$ find dir -name filename -print
```
dir 디렉터리 이하를 검색해서 갱신 시각이 하루 전인 파일을 찾기
```
$ find dir -mtime 1 -print
```
dir 디렉터리 이하를 검색해서 파일명이 filename인 파일을 찾아서 rm 명령어를 실행
```
$ find dir -name filename -exec /bin/rm {} \;
```
현재 디렉터리 이하를 검색해서 확장자가 .c인 파일을 찾기
```
$ find ./ -regex "./.*\.c$"
