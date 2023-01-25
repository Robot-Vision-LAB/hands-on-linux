# 지정한 시각마다 명령어 실행하기

유닉스 계열 OS는 지정한 시각이나 정기적으로 명령어를 실행하는 `cron` 프로그램이 존재.

os가 시작할때 데몬 프로세스로 실행되며 `/etc/crontab`을 읽어서 설정한 시각이 되면 해당 명령어를 실행한다.

## crontab 파일 수정하기

```
$ vi ~/.crontab

* * * * * echo "test plain text." >> $HOME/Desktop/test.txt
```

</br>

### 작성 형식

파일 형식은 다음과 같다.

```
┌────────── 분 (0 - 59)
│  ┌──────── 시 (0 - 23)
│  │  ┌────── 일 (1 - 31)
│  │  │  ┌──── 월 (1 - 12)
│  │  │  │   ┌── 요일 (0 - 6 or 1 - 7)
│  │  │  │   │                
↓  ↓  ↓  ↓   ↓
분 시 일 월 요일 명령어1
분 시 일 월 요일 명령어2
...
분 시 일 월 요일 명령어n
```

요일은 다음과 같이 표시한다.
|표기|일|월|화|수|목|금|토|
|-|-|-|-|-|-|-|-|
|숫자|0 or 7|1|2|3|4|5|6|
|문자|Sun|Mon|Tue|Wed|Thu|Fri|Sat|


</br>

### 반복 실행
반복이 필요한 경우 *(애스터리스크)를 표기해서 사용한다.

매월 1일 12시에 실행하려는 경우 아래와 같이 작성한다.
```
0 12 1 * * 명령어
```

</br>

## crontab 실행하기

앞서 만든 crontab 파일을 다음과 같이 실행한다.

```shell
$ crontab ~/.crontab
```

```shell
$ cat ~/Desktop/test.txt
test plain text.
```

</br>

## 등록된 crontab 확인하기

```shell
$ crontab -l
* * * * * echo "test plain text." >> $HOME/Desktop/test.txt
```

</br>

## 동작중인 crontab 해제하기

```shell
$ crontab -r
```
