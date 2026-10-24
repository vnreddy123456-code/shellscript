#!/bin/bash
# 

R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"
source_dir=$1
dest_dir=$2
days=${3:-14} #id days not passed default to 14 days

usage(){
    echo -e "${Y}USAGE:: $0 <SOURCE_DIR> <DESTINATION_DIR> <DAYS-OLD>${N}"
    exit 1
}

if [ -z "$source_dir" ] || [ -z "$dest_dir" ];then
    echo -e "${R}ERROR..missing parameter${N}"
    usage
fi

if [! -d "$source_dir" ]; then
    echo -e "${R}ERROR: ${source_dir} not exit${N}"
    exit 1
fi

if [ ! -d "$dest_dir" ]; then
    echo -e "${R}ERROR: ${dest_dir} not exit${N}"
    exit 1
fi

echo "Scanning files older than $days in $source_dir"
files_to_archive=$(find $source_dir -name "*.log" -type f -mtime +$days)

if [ -z "$files_to_archive" ]; then
    echo "No log files found older than $days"
    exit 0
fi

timestamp=$(date +%Y-%m-%d-%H-%M-%S)

file_name="$dest_dir/logs-$timestamp.tar.gz"

tar -czf $file_name $files_to_archive

if [ $? -ne 0 ]; then
    echo "Logs archival is failed"
    exit 1
else
    echo "Logs are archived: $file_name"
    while IFS= read -r line
    do
        echo "File is going to be deleted: $line"
        rm -f $line
        echo "File deleted: $line"
    done <<< "$files_to_archive"
fi