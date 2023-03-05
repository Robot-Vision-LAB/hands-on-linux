# 지정한 url 다운로드하기

인터넷에서 파일을 다운로드하려면 wget 또는 curl 명령어를 사용한다. 두 명령어는 비슷한 기능을 제공하지만 환경이나 다운로드 사이트에 따라 사용하는 명령어가 다름

> wget [옵션] url
>
> curl [옵션] url

주요 옵션(wget) | 설명
---|---
-b | 백그라운드로 다운로드
-i _file_ | 지정한 _file_ 파일에 적힌 url을 다운로드
-r | 링크를 재귀적으로 다운로드
-c | 이어 받기로 다운로드
-q | 메시지를 출력하지 않음

주요 옵션 (curl) | 설명
---|---
-O | 다운로드한 결과를 url에서 가져온 파일명으로 저장
-o _file_ | 다운로드한 결과를 _file_ 파일로 저장
-C _offset_ | _offset_ 바이트 위치에서 이어서 다운로드

```bash
# https://www.example.com/index.html을 다운로드
$ wget https://www.example.com/index.html
$ curl -O https://www.example.com/index.html

# https://www.example.com/index.html 사이트 전체를 다운로드
$ wget -r https://www.examle.com/index.html

# URL.txt 파일에 적힌 URL을 일괄 다운로드
$ wget -i URL.txt
```
