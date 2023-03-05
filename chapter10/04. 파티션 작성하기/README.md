# 파티션 작성하기

`parted` 명령어를 이용하면 하드디스크나 USB와 같은 저장매체에 GUID 파티션을 작성할 수 있다.

> `parted`명령어는 슈퍼유저 권한이 필요하다.


`parted`를 통해서 특정 파티션 정보를 살펴볼 수 있다.
```console
$ sudo parted /dev/sdb
...
(parted) quit
```

## 파티션 정보 변경
아래의 과정은 MB 단위로 /dev/sdb 디스크에 GUID 파티션을 작성하는 예제이다.

> `parted` 명령어는 쓰기 관련 내부 명령을 사용하는 경우 바로 적용되어서 주의하여야 한다.

```console
(parted) select /dev/sdb
...
(parted) unit MB <- 단위 설정
(parted) mklabel
새 디스크 레이블 형식> gpt
...
(parted) mkpart <- 파티션 작성
분할 영역 이름? <- 파티션 명
파일 시스템 형식?
시작점?
끝점?
...
```

작성한 파티션을 부팅에 사용하려면 boot 플래그를 on으로 설정한다.
```console
(parted) print
... <- 관련 정보 출력
(parted) set 1 boot on <- 1번 파티션에 부팅 설정
```

## 주요 옵션

|옵션| 설명|
|-|-|
|-l| 지정한 디바이스 파티션 정보를 출력|

### 주요 내부 명령어

|명령| 설명|
|-|-|
|select *dev*| 대상 디바이스 *dev*를 설정|
|unit *n*| 사용단위를 *n*으로 설정. `s(섹터)`, `B(바이트)`, `kB`, `MB`, `GB`, `TB`, `%`, `cyl(실린더)`, `compact`|
|check *part*|*part* 파티션을 간단히 점검|
|print|파티션 상태 출력|
|mklabel *ltype*|파티션 테이블을 작성. `msdos`, `gpt`|
|mkpart *ptype* [*type*] start end|파티션 종류로 *ptype* 을 설정. *ptype*은 `primary`, `logical`, `extended`, *type*은 `ext2`, `linux-swap`, `fat32(VFAT)`등|
|rm *part*| 파티션 삭제 |
|set *part* flag on\|off | *part*에 flag 플래그를 설정 또는 해제|
|name *part* *name*|*part* 파티션 명칭을 *name*으로 설정|
|quit| 명령어 종료|
