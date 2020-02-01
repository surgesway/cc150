#!/bin/bash

declare -A file_name_map
declare -A dir_name_map

# 数组和字符串
file_name_map['1.1']="1.1 判断字符串是否有重复的字符"
file_name_map['1.2']="1.2 判定是否互为字符重排"
file_name_map['1.3']="1.3 URL化"
file_name_map['1.4']="1.4 回文排列"
file_name_map['1.5']="1.5 一次编辑"
file_name_map['1.6']="1.6 字符串压缩"
file_name_map['1.7']="1.7 旋转矩阵"
file_name_map['1.8']="1.8 零矩阵"
file_name_map['1.9']="1.9 字符串轮转"


# 链表
file_name_map['2.1']="2.1 移除重复节点"
file_name_map['2.2']="2.2 返回倒数第k个节点"
file_name_map['2.4']="2.4 按基准值将链表分为两部分"


## 目录映射
result_dir="markdown"

for key in "${!file_name_map[@]}"; do
	dir_key=`echo "$key" | cut -b 1`
	jupyter nbconvert "jupyter/$key.ipynb" --to markdown --output "../$result_dir/${file_name_map[$key]}.md"
done
