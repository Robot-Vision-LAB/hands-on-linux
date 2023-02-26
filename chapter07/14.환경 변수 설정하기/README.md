# 환경 변수 설정하기
환경 변수를 설정하려면 export 명령어나 env 명령어를 사용

## 서식
```
export 변수명[=설정한값]
env [옵션] 변수명=설정한값... 명령어명
```

## 주요 옵션(env 명령어)
| 옵션 | 설명 |
|---|---|
| -i | 이미 설정된 모든 환경 변수를 무효화 |
| -u *string* | 환경 변수 *string*이 이미 설정되어 있으면 무효화 |

## 사용 예
```
$ export NAME=value
$ export DEFINEDNAME
```
```
$ env LANG=C bash
```
```
$ unset NAME
```

## 싱글쿼테이션과 더블쿼테이션

| 쿼테이션 | 사용법 | 사용 시기 |
|---|---|---|
| 싱글쿼테이션 | ' ' | 공백 문자를 포함한 문자열을 셸 변수에 대입할 때 |
| 더블쿼테이션 | " " | 변수를 포함한 문자열을 셸 변수에 대입할 때 |

```
$ MYNAME='Super Maltman'
```
```
$ MYLOGINNAME = "My login name is: $USER"
```