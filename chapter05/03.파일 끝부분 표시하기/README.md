# 파일 끝부분 표시하기

표시 량을 지정하지 않으면 10개의 문장을 출력한다.

```console
$ tail states
사우스다코타    South Dakotan   Sodaker, Soda
테네시  Tennessean      Tennesseer, 'Seer, Tennis Shoe
텍사스  Texan   Texasan, Texassian
유타    Utahn, Utahan   Utatian (Rhymes with "mutation"), Utard
버몬트  Vermonter       Vermonster
버지니아        Virginian       East Virginian
워싱턴  Washingtonian   'oner
웨스트버지니아  West Virginian  Westerner, Dumn shithead whose university's football team sucks major ass
위스콘신        Wisconsinite    Whisker, Sconnie, Cheesehead
와이오밍        Wyomingite
```

## 옵션

|옵션|설명|
|-|-|
|-f| 파일을 끝까지 표시해도 종료하지 않고 계속해서 파일에 데이터가 추가될 때마다 갱신된 내용을 표시|
|-_**n**_| 뒤에서 n 번째 줄까지 표시|
|-n _**n**_|앞에서 n 줄 이후 표시|
|-n -_**n**_|끝부분에서 n줄 이후 표시|
|-c _**n**_|앞에서 n바이트 이후 표시|
|-c -_**n**_|뒤에서 n바이트 제외하고 표시|


### `-f` 옵션의 활용

실시간으로 작성되는 로그파일을 읽을때 사용하면 유용하다.

```
$ tail -f time.log 
```

