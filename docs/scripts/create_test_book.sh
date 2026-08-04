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


cp ../chapters/foreword/*.* $build_folder             ; mv $build_folder/README.md $build_folder/README_00.md
cp ../chapters/skriva/*.* $build_folder              ; mv $build_folder/README.md $build_folder/README_01.md

cd "${build_folder}" || exit 42

{ \
  cat README_00.md; echo " "; echo "\pagebreak"; echo " "; \
  cat README_01.md; echo " "; echo "\pagebreak"; echo " "; \
} >> README.md

pandoc README.md -o book.pdf --toc --toc-depth=1 --highlight-style=tango -V geometry:margin=0.5in
cp book.pdf ../../books/test_bok_without_front_page.pdf

cd ../../boecker || exit 43
pdfunite book_front_page_1.pdf test_bok_without_front_page.pdf test_book.pdf

# Make booklet
bookletimposer -a test_book.pdf -o test_haefte.pdf

rm test_bok_without_front_page.pdf
