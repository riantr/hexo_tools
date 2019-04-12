if [ -z $1 ];then
    echo usage: .hlp [keyWords] [rm]
    ls ~/work/hexo/source/_posts/
else
    if [ "$2" == "rm" ];then
        echo You are going to delete `ls ~/work/hexo/source/_posts | grep $1`.
        for i in `ls ~/work/hexo/source/_posts | grep $1| xargs -n 1`
        do
            read -p "Do you want delete $i? " Confirm
            chmod 774 source/_posts
            [ "$Confirm" == "Yes" ] || [ "$Confirm" == "yes" ] || [ "$Confirm" == "y" ] && rm -r ~/work/hexo/source/_posts/$i
            chmod 444 source/_posts
            [ "$Confirm" == "Yes" ] || [ "$Confirm" == "yes" ] || [ "$Confirm" == "y" ] && rm -r ~/work/hexo/source/_posts/$i
        done
    else
        ls ~/work/hexo/source/_posts | grep $1

    fi
fi
