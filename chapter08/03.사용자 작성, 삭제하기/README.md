# 사용자 작성, 삭제하기
useradd: 사용자 작성

userdel: 사용자 삭제

## useradd 주요 옵션
| 옵션 | 설명 |
|---|---|
| -m | 사용자 홈 디렉터리가 존재하지 않으면 자동으로 작성 |
| -c name | 사용자 풀네임으로 name을 작성 |
| -d directory | 사용자 홈 디렉터리로 directory를 사용 |
| -e date | 사용자 계정을 무효화할 날짜를 지정 |
| -g group | 사용자 그룹 사용|
| -P password| 암호 사용|
| -s shell | 사용자 로그인 셸 사용|
| -u uid | 사용자 ID로 uid 사용|

## userdel 주요 옵션
| 옵션 | 설명 |
|---|---|
| -r | 사용자 홈 디렉터리도 함께 삭제 |

