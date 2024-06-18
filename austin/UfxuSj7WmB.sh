

#!/bin/bash

# 指定要处理的目录
dir=".\austin"

# 遍历目录中的所有文件
for file in $(find $dir -type f)
do
    # 生成1到100之间的随机数
    rand=$(($RANDOM % 100 + 1))
    # 在文件中插入随机数行数的空行
    for i in $(seq 1 $rand)
    do
        sed -i '1i\' $file
    done
done






