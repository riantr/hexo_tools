 if [ -z $1 ];then
     echo usage
 else
     [ -n $5 ] && sed -i "s/tags:/& $5/" source/_posts/$1.md
     [ -n $4 ] && sed -i "s/tags:/& $4/" source/_posts/$1.md
     [ -n $3 ] && sed -i "s/tags:/& $3/" source/_posts/$1.md
     [ -n $2 ] && sed -i "s/tags:/& $2/" source/_posts/$1.md
 fi
