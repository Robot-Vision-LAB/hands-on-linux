# 두 명령어 조합하기

- `|` : 명령어끼리 조합할때 사용하는 기호

- `|&` : 명령어끼리 조합할때 사용하는 기호

```bash
# 첫번재 ps 명령어 표준 출력을 두번째 wc 명령어 표준 입력으로 연결
$ ps | wc

# file 파일 내용을 알파벳 순서로 정렬해서 중복을 제거해서 표시
$ sort file | uniq

# ls 명령어 에러 출력만 less 명령어 표준 입력에 연결해서 표시
$ ls -l file1 file2 2>&1 > /dev/null | less

# ls 명령어 출력과 에러 출력 둘 다 less 명령어 표준 입력에 연결해서 표시 (아래 두 명령어는 같은 의미)
$ ls -l file1 file2 2>&1 | less
$ ls -l file1 file2 |& less
```