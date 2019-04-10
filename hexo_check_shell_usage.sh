man $1 > $1.help
if [ "$?" = "0" ] && [ ! -f ~/work/hexo/source/_posts/$1-usage.md ];then
    hexo n $1-usage
    cat $1.help >> ~/work/hexo/source/_posts/$1-usage.md
else
    cat $1.help >> ~/work/hexo/source/_posts/$1-usage.md
fi
rm $1.help
