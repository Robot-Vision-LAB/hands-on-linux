# 파일 앞부분 표시하기 

```console
$ head states
Alabamian, Alabaman     Alabamer, 'Bamer
알래스카        Alaskan Ice Boxer, Alasker
애리조나        Arizonan, Arizonian     Zoner
아칸소  Arkansan, Arkansawyer   Arkansasian
캘리포니아      Californian     Californiac, Californicator
콜로라도        Coloradan[4]    Highlander
코네티컷        Connecticuter, Nutmegger        Connecticutioner (Rhymes with executioner)
델라웨어        Delawarean      Delawearer
플로리다        Floridian, Floridan     Floradinian
조지아  Georgian        George
```

## 표시할 줄 수를 지정

```console
$ head -3 states
Alabamian, Alabaman     Alabamer, 'Bamer
알래스카        Alaskan Ice Boxer, Alasker
애리조나        Arizonan, Arizonian     Zoner
```

## 다른 명령어와 함께 사용하기

```console
$ last | head -3
jonghyeok  ttys000                   Mon Jan 30 11:32 - 11:32  (00:00)
jonghyeok  ttys000                   Mon Jan 30 10:42 - 10:42  (00:00)
jonghyeok  ttys002                   Sun Jan 29 20:51 - 20:51  (00:00)
```


## 옵션
여기서 _**n**_(기울임체)은 정수가 들어간다.
|옵션|설명|
|-|-|
|-_**n**_| 앞에서 n 번째 줄까지 표시|
|-n _**n**_|앞에서 n 번째 줄까지 표시|
|-n -_**n**_|끝에서 n줄까지 제외하고 표시|
|-c _**n**_|앞에서 n바이트까지 표시|
|-c -_**n**_|뒤에서 n바이트까지 제외하고 표시|
