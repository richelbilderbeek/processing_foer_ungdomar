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


cp ../chapters/foerord/*.*      $build_folder; mv $build_folder/README.md $build_folder/README_00.md
cp ../chapters/17_tangentbord_1/*.* $build_folder; mv $build_folder/README.md $build_folder/README_01.md
cp ../chapters/18_tangentbord_2/*.* $build_folder; mv $build_folder/README.md $build_folder/README_02.md
cp ../chapters/19_tangentbord_3/*.* $build_folder; mv $build_folder/README.md $build_folder/README_03.md
cp ../chapters/20_tangentbord_4/*.* $build_folder; mv $build_folder/README.md $build_folder/README_04.md


cd "${build_folder}" || exit 42

{ \
  cat README_00.md; echo " "; echo "\pagebreak"; echo " "; \
  cat README_01.md; echo " "; echo "\pagebreak"; echo " "; \
  cat README_02.md; echo " "; echo "\pagebreak"; echo " "; \
  cat README_03.md; echo " "; echo "\pagebreak"; echo " "; \
  cat README_04.md; echo " "; echo "\pagebreak"; echo " "; \
} >> README.md

pandoc README.md -o book.pdf --toc --toc-depth=1 --highlight-style=tango -V geometry:margin=0.5in
cp book.pdf ../../books/book_5_without_front_page.pdf

cd ../../books || exit 43
pdfunite book_front_page_5.pdf book_5_without_front_page.pdf book_5.pdf

# Make booklet
bookletimposer -a book_5.pdf -o booklet_5.pdf

rm book_5_without_front_page.pdf
