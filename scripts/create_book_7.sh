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


cp ../chapters/foreword/*.*      $build_folder; mv $build_folder/README.md $build_folder/README_00.md
cp ../chapters/25_sinus_och_cosinus_1/*.* $build_folder; mv $build_folder/README.md $build_folder/README_01.md
cp ../chapters/26_sinus_och_cosinus_2/*.* $build_folder; mv $build_folder/README.md $build_folder/README_02.md
cp ../chapters/27_sinus_och_cosinus_3/*.* $build_folder; mv $build_folder/README.md $build_folder/README_03.md
cp ../chapters/28_sinus_och_cosinus_4/*.* $build_folder; mv $build_folder/README.md $build_folder/README_04.md


cd "${build_folder}" || exit 42

{ \
  cat README_00.md; echo " "; echo "\pagebreak"; echo " "; \
  cat README_01.md; echo " "; echo "\pagebreak"; echo " "; \
  cat README_02.md; echo " "; echo "\pagebreak"; echo " "; \
  cat README_03.md; echo " "; echo "\pagebreak"; echo " "; \
  cat README_04.md; echo " "; echo "\pagebreak"; echo " "; \
} >> README.md

pandoc README.md -o book.pdf --toc --toc-depth=1 --highlight-style=tango -V geometry:margin=0.5in
cp book.pdf ../../books/book_7_without_front_page.pdf

cd ../../books || exit 43
pdfunite book_front_page_7.pdf book_7_without_front_page.pdf book_7.pdf

# Make booklet
bookletimposer -a book_7.pdf -o booklet_7.pdf

rm book_7_without_front_page.pdf
