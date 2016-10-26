#!/bin/bash
#Assignment 3 Script

echo "Please input a markdown file that is in this directory (EX: README.md): "

read input1

name=${input1%.*}
echo "Filename: $name"
# Declare input argument as a variable

convert_markdown()
#This function will convert a markdown file into HTML, DOCX, ODT, and PDF formats
{
pandoc -s -o $name.html $name.md
# Convert markdown to HTML

pandoc -s -o $name.docx $name.md
# Convert markdown to DOCX

pandoc -s -o $name.odt $name.md
# Convert markdown to ODT

pandoc -s -o $name.pdf $name.md
# Convert markdown to PDF

echo "Converted $input1 to HTML, DOCX, ODT, PDF"
# Make the command line read "Converted INPUT-FILENAME to HTML, DOCX, ODT, PDF" 
}

## MAIN
if [ ${input1#*.} = md ] || [ ${input1#*.} = markdown ]; then
    echo Converting...
    convert_markdown
    #call function
else
echo -e "\e[31mError: You did not input a markdown file."
fi