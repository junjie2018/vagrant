# 将符合某个模式的文件copy到另一个文件夹下
# $1：当前目录
# $2：匹配的模式
# $3：目标文件夹
function copyFileByPattern(){
    for file in `ls $1`
    do
        if [ -f $1"/"$file ]; then
            if [[ $file =~ $2 ]]; then
                # copy $file $3
                echo $file 
            fi
        else
            copyFileByPattern $1"/"$file $2 $3
        fi
    done
}

copyFileByPattern ~/software ^hadoop-.*jar$ ~/tmp
