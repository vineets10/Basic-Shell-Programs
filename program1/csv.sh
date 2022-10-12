#!/bin/bash

input_file=$1
# output_file=$2

# Checking if the file name given for the csv is wrong
if [ ! -f $input_file ]
then
    echo "The input csv file does not exists!!!"
    exit
fi

# variable introduced to prevent the insertion of the column names of csv files
c=0
while IFS="," read -r col1 col2 col3 col4
do
    ((c++))
    if [ $c -eq 1 ]
    then
        continue
    fi
    output_file="$col1.vcf"
    if [ -f $output_file ]
    then
        # echo "File already exists!"
        
        # Getting the old version from the vcf file
        old_version_string=$(head -n 2 $output_file | tail -1)
        len=${#old_version_string}
        
        # Getting the substring which contains the version of the vcard
        old_version_no=${old_version_string:8:`expr $len - 8`}
        
        # Incrementing the old version no.
        new_version_no=$((old_version_no + 1))
        echo "New version No. ${new_version_no}"
        
        # Concatenating the version string with new version no.
        version="VERSION:"
        version="$version$new_version_no"
        
        # prologue of the vcard file
        echo "BEGIN:VCARD" > $output_file
        echo $version >> $output_file
       
    else
        # If the vcf file isn't present then create one
        touch $output_file
        
        # prologue of the vcard file
        echo "BEGIN:VCARD" > $output_file
        echo "VERSION:1" >> $output_file
    fi
    
    echo -e "\nName    : $col1" >> $output_file
    echo "MIS     : $col2" >> $output_file
    echo "CGPA    : $col3" >> $output_file
    echo -e "Age     : $col4 \n" >> $output_file
    echo "--------------\n" >> $output_file
    
    # epilogue of the vcard file
    echo "END:VCARD" >> $output_file
done < $input_file

