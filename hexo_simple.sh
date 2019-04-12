#!/bin/bash
chmod 774 source/_posts/
if [ -z $1 ];then
    ls ~/work/hexo/source/_posts/ 
elif [ ! -z $2 ];then
[ "$1" == "n" ] && echo create post.&&chmod 444 source/_posts/ &&exit 1;
[ "$1" == "c" ] && echo categorize post.&&chmod 444 source/_posts/ &&exit 2;
[ "$1" == "t" ] && echo tag post.&&chmod 444 source/_posts/ &&exit 3;
elif [ "$1" == "--help" ];then
    echo "help"&&chmod 444 source/_posts/ &&exit 4;

else
    .hlp $1| sed '=' | xargs -n 2
    if [ $? ] && [ `.hlp $1|sed 's/.md//g'|xargs -n 1|wc -l` -eq 1 ];then
            vim source/_posts/`.hlp $1` 
    else
        read -p "Enter your choice to edit:['q' for quit.]" CHOICE
        case $CHOICE in 
        1)
            vim source/_posts/`.hlp $1| sed '=' | xargs -n 2 | sed -n '1p'|cut -d ' ' -f 2`
        ;;
        2)
            vim source/_posts/`.hlp $1| sed '=' | xargs -n 2 | sed -n '2p'|cut -d ' ' -f 2`
        ;;
        3)
            vim source/_posts/`.hlp $1| sed '=' | xargs -n 2 | sed -n '3p'|cut -d ' ' -f 2`
        ;;
        4)
            vim source/_posts/`.hlp $1| sed '=' | xargs -n 2 | sed -n '4p'|cut -d ' ' -f 2`
        ;;
        5)
            vim source/_posts/`.hlp $1| sed '=' | xargs -n 2 | sed -n '5p'|cut -d ' ' -f 2`
        ;;
        6)
            vim source/_posts/`.hlp $1| sed '=' | xargs -n 2 | sed -n '6p'|cut -d ' ' -f 2`
        ;;
        7)
            vim source/_posts/`.hlp $1| sed '=' | xargs -n 2 | sed -n '7p'|cut -d ' ' -f 2`
        ;;
        8)
            vim source/_posts/`.hlp $1| sed '=' | xargs -n 2 | sed -n '8p'|cut -d ' ' -f 2`
        ;;
        9)
            vim source/_posts/`.hlp $1| sed '=' | xargs -n 2 | sed -n '9p'|cut -d ' ' -f 2`
        ;;
        q)
        chmod 444 source/_posts
        exit
        ;;
        esac
    fi
fi
chmod 444 source/_posts
