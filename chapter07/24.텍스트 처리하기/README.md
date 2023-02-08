# 텍스트 처리하기

~~~shell
// sed 명령어로 텍스트 패턴을 이용해서 .jpeg인 파일을 .jpg 확장자로 바꾸기
$ vi test10-1.sh
#!/bin/bash

while [$# -gt 0]; do
        src=$1
        shift

        dst='echo $src | sed -e "s/\.jpeg$/\.jpg/"'
        if [$src=$dst]; then
                continue
        fi
        echo rename $src to $dst
        mv $src $dst
done
~~~
- 특수 변수 $#으로 인수 개수를 확인
- sed 명령어 정규 표현식에서 .은 임의의 한 글자를 뜻하므로 이스케이프를 앞에 붙임. 

~~~shell
$ ./test10-1.sh *.jpeg
rename abcd.jpeg to abcd.jpg
rename a.jpeg to a.jpg
.
.
.
~~~

---
~~~shell
// sed 명령어를 사용하지 않고, 셸에 내장된 문자열 조작 기능을 사용하기
$ vi test10-1.sh
#!/bin/bash

while [$# -gt 0]; do
        src=$1
        shift

        name=${src%.*}
        ext=${src##*.}

        dst$name.jpg
        if [$ext=jpeg]; then
                echo rename $src to $dst
                mv $src $dst
        fi
done
~~~
- ${변수명%패턴} = 후방 일치 탐색으로 문자열 뒤에서 찾아 가장 먼저 패턴과 일치한 문자열을 삭제함.
- .*를 지정하면 파일명에서 확장자를 제거한 문자열이 됨
- ${변수명##패턴} = 전방 일치 탐색으로 문자열 앞에서부터 찾아 패턴과 일치하는 가장 긴 문자열을 삭제/
- *.을 지정하면 확장자만 남김

|셸 내장 문자열 조작 기능||
|---|---|
| ${var#pat} | var 변숫값에서 전방 일치로 pat 패턴과 일치하는 가장 짧은 문자열 삭제 |
| ${var##pat} | var 변숫값에서 전방 일치로 pat 패턴과 일치하는 가장 긴 문자열 삭제 |
| ${var%pat} | var 변숫값에서 후방 일치로 pat 패턴과 일치하는 가장 짧은 문자열 삭제 |
| ${var%%pat} | var 변숫값에서 후방 일치로 pat 패턴과 일치하는 가장 긴 문자열 삭제 |


|주요 내부 명령어||
|---|---|
| p | 화면에 출력 |
| d | 삭제 |
| = | 줄 번호를 표시 |
| a text | text 텍스트를 다음 줄에 추가 |
| i text | text 텍스트를 이전 줄에 삽입 |
| c text | text 텍스트로 치환 |
| s/old/new | old 패턴을 new패턴으로 치환 |


~~~shell
// 표준 입력으로 입력받은 'Hello, world!'에서 world를 maltman으로 치환
$ echo Hello, world! | sed -e "s/world/maltman"

// 현재 디렉터리에 있는 확장자가 .txt인 파일 목록을 표시할 때, 파일명에서 확장자를 제거
$ ls *.txt | sed s/\.txt$//
~~~