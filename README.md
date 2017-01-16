##Commandline Utility
터미널 환경에서 사용하는 유틸리티 스크립트들을 정리하고 있다.

### Pick.sh
안드로이드 어플 선택하여 설치하기

    $ ls -1
    App_1.01.apk
    App_1.02.apk
    App_1.03.apk
    $ ls -1 | Pick.sh adb install

### Tree.sh
tree 결과를 브라우저에서 보여준다. 파일 확장자를 인자로 줄 수 있다.

    $ Tree.sh html

![Tree.sh screenshot](https://afrontend.files.wordpress.com/2017/01/tree-sh.png)
