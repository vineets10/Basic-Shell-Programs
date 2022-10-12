#!/bin/bash

year=2000

i=0

while [ $i -lt 10 ]
do
echo $year
year=$((year + 4))
i=$((i + 1))
done