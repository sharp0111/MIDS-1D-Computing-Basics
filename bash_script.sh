#!/bin/bash

# Author: Sergey Nam

# Create an empty new_index.html file
touch new_index.html

# Copy first 19 lines from original index.html into new_index.html
sed -n "1,14p"  ./website/index.html > new_index.html

# Create a variable for images directory
IMAGES_DIR="./website/images"

# Run a loop for file names
i=0
for f in "$IMAGES_DIR"/*;
do
  FILES[$i]="$f"
  # Echo array item
  echo "${FILES[$i]}"
  i=`expr $i + 1`
done

NUMBER_OF_IMAGES=159
THREE=3
# Get number of images per row
NUMBER_OF_ROWS=`expr $NUMBER_OF_IMAGES / $THREE`

# Append table rows
row=0
col=0
while [ "$row" -lt "$NUMBER_OF_ROWS" ]
do
   echo '    <tr>' >> new_index.html
   echo '      <td><img src=${FILES[$col]} alt="" border=3 height=100 width=300></th>' >> new_index.html
   col2=`expr $col + 1`
   echo '      <td><img src=${FILES[$col2]} alt="" border=3 height=100 width=300></th>' >> new_index.html
   col3=`expr $col + 2`
   echo '      <td><img src=${FILES[$col3]} alt="" border=3 height=100 width=300></th>' >> new_index.html
   echo '    </tr>' >> new_index.html
   
   row=`expr $row + 1`
   col=`expr $row \* 3`
done

# Append the last 25-27 lines to the new_index.html
sed -n "25,27p" ./website/index.html >> new_index.html
