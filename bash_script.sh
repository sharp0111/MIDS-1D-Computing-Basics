#!/bin/bash

# Author: Sergey Nam

# Create an empty new_index.html file
touch new_index.html

# Copy first 19 lines from original index.html into new_index.html
sed -n "1,14p"  ./website/index.html > new_index.html

# Create a filelist.txt for file names
touch filelist.txt

# Create a variable for images directory
IMAGES_DIR="./website/images"

# Run a loop for file names
for f in "$IMAGES_DIR"/*; do
  echo "$f" >> filelist.txt
done

NUMBER_OF_IMAGES=159
THREE=3
# Get number of images per row
# NUMBER_OF_ROWS=expr $NUMBER_OF_IMAGES/$THREE
# echo $NUMBER_OF_ROWS

# Append table rows
for i in {1..53}; do
  echo "    <tr>" >> new_index.html
  echo "      <td><img src=\"./website/images/CircleGradient2GoldenRectangle.png\" alt=\"\" border=3 height=100 width=300></th>" >> new_index.html
  echo "      <td><img src=\"./website/images/Gráfico de dos funciones 01.jpg\" alt=\"\" border=3 height=100 width=300></th>" >> new_index.html
  echo "      <td><img src=\"./website/images/Calculus- the graph of y = 4-5x^3 - 2x^2 + 1.png\" alt=\"\" border=3 height=100 width=300></th>" >> new_index.html 
  echo "    </tr>" >> new_index.html
done

# Append the last 25-27 lines to the new_index.html
sed -n "25,27p" ./website/index.html >> new_index.html
