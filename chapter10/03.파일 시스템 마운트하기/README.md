# 파일 시스템 마운트하기

- 마운트 : 서로 다른 디바이스의 디렉터리를 트리 구조 어딘가에 연결하는 작업
    - `mount` : 마운트 작업을 하는 명령어
    - `unmount` : 마운트를 해제하는 명령어

> mount [옵션] [-t 파일시스템 종류] 디바이스마운트디렉터리
>
> mount [옵션]
>
> unmount 마운트디렉터리

주요 옵션(mount) | 설명
---|---
-a | /etc/fstab 파일에서 지정한 파일 시스템을 모두 마운트
-t _type_ _dev_ _dir_ | _dev_ 디바이스를 _type_ 파일 시스템으로 _dir_ 디렉터리에 마운트
-a -t _type_ | 파일 시스템 종류가 _type_ 인 것만 마운트
-r | 읽기 전용으로 마운트 (기본값은 읽고 쓰기 가능)
-w | 읽고 쓰기 가능으로 마운트


주요 옵션 (unmount) | 설명
---|---
-t _type_ | 파일 시스템 종류가 _type_인 마운트를 해제

파일 시스템 종류 | 설명
---|---
ext2 | 고전 리눅스 파일 시스템
ext3 | 리눅스 파일 시스템
ext4 | 리눅스 파일 시스템 (많은 배포판에서 기본값)
ufs | 유닉스 파일 시스템
xfs | extents 파일 시스템
zfs | Zettabyte 파일 시스템
iso9660 | DVD, CD-ROM 등
msdos | FAT 파일 시스템
vfat | FAT32 파일 시스템
ntfs | NTFS 파일 시스템
btrfs | btrfs 파일 시스템

```bash
# 현재 마운트 상황을 표시
$ mount

# DVD(/dev/cdrom)를 /mnt 디렉토리에 마운트
$ mount -t iso9660 /dev/cdrom /mnt
```
