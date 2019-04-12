if [ -z $1 ];then
    echo "usage: .hvp <PostName>"
else
    if [ ! -f source/_posts/$1.md ];then
        hexo n $1 1>>posts.log
        for i in $(echo $1|xargs -d-|xargs -n 1)
        do
            sed -i "s/tags:/&\n  - $i/" source/_posts/$1.md
        done
        sed -i "2a\\categories:\n  -" source/_posts/$1.md
        if [ -n $2 ];then
            sed -i "2c\\title: `echo $1|xargs -d-`" source/_posts/$1.md
        else 
            sed -i "2c\\title: $2" source/_posts/$1.md
        fi
        vim source/_posts/$1.md +4
    else
        vim source/_posts/$1.md
    fi
fi
