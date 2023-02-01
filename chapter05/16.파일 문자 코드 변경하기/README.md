# 파일 문자 코드 변경하기

## 주요 옵션
| 옵션 | 설명 |
|---|---|
| -f | 원본 문자 코드를 지정 |
| -t | 변환 대상 문자 코드를 지정 |
| -l | 사용 가능한 모든 문자 코드명을 출력 |
| -c | 변환 불가능한 문자를 제외 |

## 사용 예
UTF-8 인코딩된 file1을 CP949 코드로 변환해서 file2로 저장
```
$ iconv -f UTF-8 -t CP949 file1 > file2
```
UTF-8 인코딩된 file1을 변환 불가능한 문자를 제외하고 EUC-KR 코드로 변환해서 file2로 저장
```
$ iconv -c -f UTF-8 -t EUC-KR file1 > file2
```
EUC-KR 인코딩된 file1을 UTF-8 코드로 변환해서 file2로 저장
```
$ iconv -f EUC-KR -t UTF-8 file1 > file2
```
file1 문자 코드 정보를 표시
```
$ file -i file1
```