# 사용자, 그룹 목록 표시하기
사용자와 그룹 관련 데이터베이스 내용은 getent 명령어로 표시

## 사용 예
passwd 데이터베이스 목록을 표시
```
$ getent passwd
```
group 데이터베이스에서 users 그룹 정보를 표시
```
$ getent group users
```

## 주요 데이터베이스와 키

| 데이터베이스 및 키 | 설명 |
|---|---|
| passwd [*key*] | 암호 정보를 참조, *key*에는 사용자명, 사용자 ID를 지정 |
| group [*key*] | 그룹 정보를 참조, *key*에는 그룹명, 그룹 ID를 지정 |
| hosts [*key*] | 호스트 정보를 참조, *key*에는 호스트명, IP 주소를 지정| 