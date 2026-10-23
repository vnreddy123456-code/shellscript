#!/bin/bash
# 

R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"
source_dir=$1
days=${2:-14} #id days not passed default to 14 days

usage(){
    echo -e "${Y}USAGE:: $0 <SOURCE_DIR> <DAYS-OLD>${N}"
    exit 1
}

if [ -z "$source_dir" ];then
    echo ""${R}ERROR..missing parameter${N}
    usage
fi

if [! -d "$source_dir" ]; then
    echo -e "${R}ERROR: ${source_dir} not exit${N}"
    exit 1
fi

echo "Scanning files older than $days in $source_dir"
find_files=$(find $source_dir -name "*.log" -type f -mtime +$days)

if [ -z "$files_to_delete" ]; then
    echo "No log files found older than $days"
    exit 0
fi

while IFS= read -r line
do
    echo "File is going to be deleted: $line"
    rm -f $line
    echo "File deleted: $line"
done <<< "$files_to_delete"

# < -> for file inputs
# <<< -> variable as input