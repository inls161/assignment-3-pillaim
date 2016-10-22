#!/bin/bash
#Assignment 3 Script

echo "Please input a markdown file that is in this directory (EX: README.md): "
read input1
name=${input1%.*}
echo "Filename: $name"
# Declare input argument as a variable

if [ $input1 == *.md ] || [ $input1 == *.markdown ]; then
pandoc -o $name.html $name.md
# Convert markdown to HTML

pandoc -o $name.docx $name.md
# Convert markdown to DOCX

pandoc -o $name.odt $name.md
# Convert markdown to ODT

pandoc -o $name.pdf $name.md
# Convert markdown to PDF

echo "Converted INPUT-FILENAME to HTML, DOCX, ODT, PDF"
# Make the command line read "Converted INPUT-FILENAME to HTML, DOCX, ODT, PDF"
else
echo "Error. You did not input a markdown file."
fi

