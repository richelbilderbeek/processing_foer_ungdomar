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


cp ../chapters/foerord/*.* $build_folder                            ; mv $build_folder/README.md $build_folder/README_00.md
cp ../chapters/05_line_och_stroke/*.* $build_folder                    ; mv $build_folder/README.md $build_folder/README_01.md
cp ../chapters/06_flytta_bollen_till_hoeger_i_evighet/*.* $build_folder; mv $build_folder/README.md $build_folder/README_02.md
cp ../chapters/07_rect_och_fill/*.* $build_folder                      ; mv $build_folder/README.md $build_folder/README_03.md

cd "${build_folder}" || exit 42

{ \
  cat README_00.md; echo " "; echo "\pagebreak"; echo " "; \
  cat README_01.md; echo " "; echo "\pagebreak"; echo " "; \
  cat README_02.md; echo " "; echo "\pagebreak"; echo " "; \
  cat README_03.md; echo " "; echo "\pagebreak"; echo " "; \
} >> README.md

pandoc README.md -o book.pdf --toc --toc-depth=1 --highlight-style=tango -V geometry:margin=0.5in
cp book.pdf ../../books/book_2_without_front_page.pdf

cd ../../books || exit 43
pdfunite book_front_page_2.pdf book_2_without_front_page.pdf book_2.pdf

# Make booklet
bookletimposer -a book_2.pdf -o booklet_2.pdf

rm bok_2_without_front_page.pdf
