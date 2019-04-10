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
        vim source/_posts/$1.md +4
    else
        vim source/_posts/$1.md
    fi
fi
