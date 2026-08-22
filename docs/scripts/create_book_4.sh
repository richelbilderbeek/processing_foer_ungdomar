#!/bin/bash

# Concatenate all Markdown files first, convert those to one PDF

build_folder=build
#echo $build_folder

rm -rf build
mkdir build

if [ ! -d $build_folder ]; then 
  echo "Error: failed to create build folder"
  exit 1
fi


cp ../chapters/foreword/*.* $build_folder   ; mv $build_folder/README.md $build_folder/README_00.md
cp ../chapters/12_fullScreen/*.* $build_folder; mv $build_folder/README.md $build_folder/README_01.md
cp ../chapters/13_PImage/*.* $build_folder    ; mv $build_folder/README.md $build_folder/README_02.md
cp ../chapters/14_tyngdkraft/*.* $build_folder; mv $build_folder/README.md $build_folder/README_03.md
cp ../chapters/15_arrays_1/*.* $build_folder  ; mv $build_folder/README.md $build_folder/README_04.md
cp ../chapters/16_arrays_2/*.* $build_folder  ; mv $build_folder/README.md $build_folder/README_05.md


cd "${build_folder}" || exit 42

{ \
  cat README_00.md; echo " "; echo "\pagebreak"; echo " "; \
  cat README_01.md; echo " "; echo "\pagebreak"; echo " "; \
  cat README_02.md; echo " "; echo "\pagebreak"; echo " "; \
  cat README_03.md; echo " "; echo "\pagebreak"; echo " "; \
  cat README_04.md; echo " "; echo "\pagebreak"; echo " "; \
  cat README_05.md; echo " "; echo "\pagebreak"; echo " "; \
} >> README.md

pandoc README.md -o book.pdf --toc --toc-depth=1 --highlight-style=tango -V geometry:margin=0.5in
cp book.pdf ../../books/book_4_without_front_page.pdf

cd ../../books || exit 43
pdfunite book_front_page_4.pdf book_4_without_front_page.pdf book_4.pdf

# Make booklet
bookletimposer -a book_4.pdf -o booklet_4.pdf

rm book_4_without_front_page.pdf
