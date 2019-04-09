if [ -z $1 ];then
    echo "usage: .hvp <PostName>"
else

    if [ ! -f source/_posts/$1.md ];then
        hexo n $1 1>>posts.log
        sed -i "s/tags:/& $(echo $1|xargs -d-)/" source/_posts/$1.md
        vim source/_posts/$1.md
    else
        vim source/_posts/$1.md
    fi
fi
