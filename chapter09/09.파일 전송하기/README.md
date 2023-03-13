# 파일 전송하기
ftp or lftp: FTP 사이트에서 파일을 다운로드하거나 호스트끼리 파일을 전송하고 싶을 때 사용

## FTP 사이트에 어떤 파일을 가져오는 방법
1. $ ftp ftp.example.com 으로 접속
2. 사용자명: anonymous 또는 ftp, 암호: 메일 주소 입력
3. 성공시 ftp 프롬프트가 출력됨
4. mget, mput 내부 명령어를 사용해서 파일을 가져오거나 전송함

## ftp, lftp 주요 내부 명령어
| 옵션 | 설명 |
|---|---|
| open hostname  | hostname 호스트에 접속 |
| close | 현재 접속한 호스트와 접속을 끊음 |
| quit | ftp 명령어 종료 |
| ls [dir] | dir 디렉터리 표시 |
| cd [dir] | dir 디렉터리로 이동 |
| mget filen | filen 파일을 내 호스트로 전송 |
| mput filen | filen 파일을 상대방 호스트로 전송 |
| pwd | 현재 디렉터리를 표시 |
| ? | 사용 가능한 명령어 표시 |

## ftp 주요 내부 명령어
| 옵션 | 설명 |
|---|---|
| ascii | 전송 파일을 텍스트 파일로 지정 |
| binary | 전송 파일을 바이너리 파일로 지정 |
| rget file | file 파일을 이어 받음 |

## lftp 주요 내부 명령어
| 옵션 | 설명 |
|---|---|
| get -c file | file 파일을 이어 받음 |
