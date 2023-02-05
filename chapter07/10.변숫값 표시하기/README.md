# 변숫값 표시하기

echo: 셸 변수, 환경 변수 관계없이 변수에 설정한 값을 확인

~~~shell
// BASH 변수에 설정된 값 표시
$ echo $BASH
/bin/bash

// BASH라는 문자열 표시
$ echo BASH
BASH

// $BASH라는 문자열 표시
$ echo \$BASH
$BASH
~~~
- 변수 BASH는 bash에서 설정한 셸 변수
- 변수에 설정한 값을 참조하고 싶으면 변수명 앞에 $를 붙이면 됨
- 두 번째 예시는 BASH를 단순한 문자열로 취급한 것


|주요옵션||
|----|---|
| -n | 표시가 끝났을 때, 줄 바꿈을 하지 않음 |
| -e | 이스케이프 시퀀스를 유효화 함 |

~~~shell
$ echo -e "malt\tcask"
~~~
