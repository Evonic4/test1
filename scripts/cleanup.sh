#!/bin/bash

#чистит папки, удаляет файлы и пустые папки

path="/root/rada/1"

log=/root/rada/rm.log
date1=`date '+ %d.%m.%Y %H:%M'`
type=* 
echo $date1 >> $log

echo "files:" >> $log

for I in ${path}; do
#удаляем файлы
find $path -mtime +3 -iname "*.$type" -exec echo {} >> $log \; -exec rm -f {} \;
done

echo "directories:" >> $log
for I in ${path}; do
#удаляем пустые папки
find $path -depth -type d -empty -exec echo {} >> $log \; -exec rmdir {} \;
done

echo " " >> $log
