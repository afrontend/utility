# Bash 스크립트 유틸리티

## 안드로이드 어플 선택하여 설치한다.(Pick.sh)

    $ ls -1
    App_1.01.apk
    App_1.02.apk
    App_1.03.apk
    $ ls -1 | Pick.sh adb install

## tree 결과를 브라우저에서 보여준다. (Tree.sh)
파일 확장자를 인자로 줄 수 있다.

    $ Tree.sh html
    $ Tree.sh js
    $ Tree.sh css

![Tree.sh screenshot](https://afrontend.files.wordpress.com/2017/01/tree-sh.png)

